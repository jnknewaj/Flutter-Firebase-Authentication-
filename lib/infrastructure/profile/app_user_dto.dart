import 'package:authentication/domain/auth/value_objects.dart';
import 'package:authentication/domain/core/app_user.dart';
import 'package:authentication/domain/core/value_objects.dart';
import 'package:authentication/infrastructure/core/server_timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_dto.freezed.dart';
part 'app_user_dto.g.dart';

@freezed
abstract class AppUserDto implements _$AppUserDto {
  const AppUserDto._();

  const factory AppUserDto({
    @required String uid,
    @required String name,
    @required String email,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _AppUserDto;

  factory AppUserDto.fromDomain(AppUser appUser) {
    return AppUserDto(
      uid: appUser.id.getOrCrash(),
      name: appUser.name.getOrCrash(),
      email: appUser.emailAddress.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  AppUser toDomain() {
    return AppUser(
      id: UniqueId.fromUniqueString(uid),
      emailAddress: EmailAddress(email),
      name: Name(name),
    );
  }

  factory AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$AppUserDtoFromJson(json);

  factory AppUserDto.fromFirestore(DocumentSnapshot doc) {
    return AppUserDto.fromJson(doc.data());
  }
}
