import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import 'package:authentication/domain/core/app_user.dart';
import 'package:authentication/domain/profile/i_app_user_repository.dart';
import 'package:authentication/domain/profile/profile_failures.dart';
import 'package:authentication/infrastructure/core/firebase_storage_helper.dart';
import 'package:authentication/infrastructure/core/firestore_helper.dart';
import 'package:authentication/infrastructure/profile/app_user_dto.dart';

@LazySingleton(as: IAppUserRepository)
class AppUserRepository implements IAppUserRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;
  final Uuid _uuid;

  AppUserRepository(
    this._firestore,
    this._firebaseStorage,
    this._uuid,
  );

  @override
  Future<Either<ProfileFailure, Unit>> createAppUser(AppUser appUser) async {
    try {
      final userDto = AppUserDto.fromDomain(appUser);
      final userDocRef = await _firestore.userDocument();
      await userDocRef.set(userDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailure.insufficientPermission());
      } else {
        return left(const ProfileFailure.unknownFailure());
      }
    }
  }

  @override
  Stream<Either<ProfileFailure, AppUser>> watchAppUser() async* {
    final userDocRef = await _firestore.userDocument();
    try {
      // yield* userDocRef
      //     .snapshots()
      //     .map((event) => right(AppUserDto.fromFirestore(event).toDomain()));
      yield* userDocRef.snapshots().map((event) {
        final appUserDto = AppUserDto.fromFirestore(event);
        appUserDto.toDomain(); // toDomain() culprit
        return right(AppUserDto.fromFirestore(event).toDomain());
      });
    } catch (e) {
      yield left(const ProfileFailure.unknownFailure());
    }
  }

  // todo cover it later
  @override
  Future<Either<ProfileFailure, AppUser>> getAppUser() async {
    // try {
    //   final userDocRef = await _firestore.userDocument();
    //   final event = await userDocRef.get();
    //   return right(AppUserDto.fromFirestore(event).toDomain());
    // } catch (e) {}
    // return left(const ProfileFailure.unknownFailure());
    return null;
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateAppUser(AppUser appUser) async {
    try {
      final userDto = AppUserDto.fromDomain(appUser);
      final userDocRef = await _firestore.userDocument();
      await userDocRef.update(userDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailure.insufficientPermission());
      } else {
        return left(const ProfileFailure.unknownFailure());
      }
    }
  }

  @override
  Future<Either<ProfileFailure, String>> uploadProfileImage(File image) async {
    try {
      final imageUid = _uuid.v1();
      final storageReference =
          await _firebaseStorage.userProfilePicsReference();
      final picReference = storageReference.child(imageUid);
      final uploadTask = picReference.putFile(image);
      await uploadTask;
      final imagePath = picReference.fullPath;
      final url = await _firebaseStorage.ref(imagePath).getDownloadURL();
      return right(url);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const ProfileFailure.insufficientPermission());
      } else {
        return left(const ProfileFailure.unknownFailure());
      }
    }
  }
}
