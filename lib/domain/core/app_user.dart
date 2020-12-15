import 'package:authentication/domain/auth/value_objects.dart';
import 'package:authentication/domain/core/failures.dart';
import 'package:authentication/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

/// If any field is added or removed [name, decription], remember to update [AppUser] object
///  created in signInWithGoogle() funtion in [FirebaseAuthFacade]

// @Entity
@freezed
abstract class AppUser implements _$AppUser {
  const AppUser._();

  const factory AppUser({
    @required UniqueId id,
    @required TextData name,
    @required EmailAddress emailAddress,
    String profilePictureUrl,
    TextData description,
  }) = _AppUser;

  factory AppUser.empty() => _AppUser(
        id: UniqueId(),
        name: TextData(''),
        emailAddress: EmailAddress(''),
        description: TextData(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.andThen(emailAddress.failureOrUnit).fold(
          (l) => some(l),
          (r) => none(),
        );
  }
}
