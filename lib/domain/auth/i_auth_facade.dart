import 'package:authentication/domain/core/app_user.dart';
import 'package:authentication/domain/auth/auth_failures.dart';
import 'package:authentication/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class IAuthFacade {
  Future<Option<AppUser>> getSignedInUser();
  Future<Option<String>> getSignedInUserId();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, AppUser>> signInWithGoogle();
  Future<void> signOut();
}
