import 'package:authentication/domain/core/app_user.dart';
import 'dart:io';
import 'package:authentication/domain/profile/i_app_user_repository.dart';
import 'package:authentication/infrastructure/profile/app_user_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:authentication/domain/profile/profile_failures.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:authentication/infrastructure/core/firestore_helper.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAppUserRepository)
class AppUserRepository implements IAppUserRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  AppUserRepository(this._firestore, this._firebaseStorage);

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
        print(':::::::DTO::::::: ${appUserDto.toString()}');
        final appUser = appUserDto.toDomain();  // toDomain() culprit
        print(':::::::::::::: ${appUser.toString()}');
        return right(AppUserDto.fromFirestore(event).toDomain());
      });
    } catch (e) {
      yield left(ProfileFailure.unknownFailure());
    }
  }

  @override
  Future<Either<ProfileFailure, AppUser>> getAppUser() async {
    // try {
    //   final userDocRef = await _firestore.userDocument();
    //   final event = await userDocRef.get();
    //   return right(AppUserDto.fromFirestore(event).toDomain());
    // } catch (e) {}
    // return left(const ProfileFailure.unknownFailure());
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateAppUser(AppUser appUser) async {}

  @override
  Future<Either<ProfileFailure, String>> uploadProfileImage(File image) async {}
}
