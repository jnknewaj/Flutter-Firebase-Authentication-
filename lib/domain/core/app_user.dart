// @Entity
import 'package:authentication/domain/auth/value_objects.dart';
import 'package:authentication/domain/core/failures.dart';
import 'package:authentication/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

@freezed
abstract class AppUser implements _$AppUser {
  const AppUser._();

  const factory AppUser({
    @required UniqueId id,
    @required Name name,
    @required EmailAddress emailAddress,
  }) = _AppUser;

  factory AppUser.empty() => _AppUser(
        id: UniqueId(),
        name: Name(''),
        emailAddress: EmailAddress(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.andThen(emailAddress.failureOrUnit).fold(
          (l) => some(l),
          (r) => none(),
        );
  }
}
