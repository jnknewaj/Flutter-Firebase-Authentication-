import 'dart:io';

import 'package:authentication/domain/core/app_user.dart';
import 'package:authentication/domain/profile/profile_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IAppUserRepository {
  Future<Either<ProfileFailure, Unit>> createAppUser(AppUser appUser);
  Stream<Either<ProfileFailure, AppUser>> watchAppUser();
  Future<Either<ProfileFailure, AppUser>> getAppUser();
  Future<Either<ProfileFailure, Unit>> updateAppUser(AppUser appUser);
  Future<Either<ProfileFailure, String>> uploadProfileImage(File image);
}