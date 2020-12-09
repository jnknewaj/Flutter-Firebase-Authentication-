// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUserDto _$_$_AppUserDtoFromJson(Map<String, dynamic> json) {
  return _$_AppUserDto(
    uid: json['uid'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_AppUserDtoToJson(_$_AppUserDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
