import 'package:authentication/domain/auth/auth_failures.dart';
import 'package:authentication/domain/auth/i_auth_facade.dart';
import 'package:authentication/domain/core/value_objects.dart';
import 'package:authentication/infrastructure/profile/app_user_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:authentication/domain/core/app_user.dart';
import 'package:authentication/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:authentication/infrastructure/core/firestore_helper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn, this._firestore);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'invalid-email') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      } else if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, AppUser>> signInWithGoogle() async {
    try {
      final googleAccount = await _googleSignIn.signIn();
      if (googleAccount == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleAccount.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);
      final appUser = AppUser(
        id: UniqueId(),
        name: TextData(userCredential.user.displayName),
        emailAddress: EmailAddress(userCredential.user.email),
        description: TextData(''),
      );
      return right(appUser);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }

  @override
  Future<Option<String>> getSignedInUserId() async {
    final firebaseUser = _firebaseAuth.currentUser;
    return optionOf(firebaseUser?.uid);
  }

  // todo not yet implemented
  @override
  Future<Option<AppUser>> getSignedInUser() async {
    final userDocRef = await _firestore.userDocument();
    final event = await userDocRef.get();
    return optionOf(AppUserDto.fromFirestore(event).toDomain());
  }
}
