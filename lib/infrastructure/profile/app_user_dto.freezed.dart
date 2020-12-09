// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppUserDto _$AppUserDtoFromJson(Map<String, dynamic> json) {
  return _AppUserDto.fromJson(json);
}

/// @nodoc
class _$AppUserDtoTearOff {
  const _$AppUserDtoTearOff();

// ignore: unused_element
  _AppUserDto call(
      {@required String uid,
      @required String name,
      @required String email,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _AppUserDto(
      uid: uid,
      name: name,
      email: email,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  AppUserDto fromJson(Map<String, Object> json) {
    return AppUserDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AppUserDto = _$AppUserDtoTearOff();

/// @nodoc
mixin _$AppUserDto {
  String get uid;
  String get name;
  String get email;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $AppUserDtoCopyWith<AppUserDto> get copyWith;
}

/// @nodoc
abstract class $AppUserDtoCopyWith<$Res> {
  factory $AppUserDtoCopyWith(
          AppUserDto value, $Res Function(AppUserDto) then) =
      _$AppUserDtoCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String name,
      String email,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$AppUserDtoCopyWithImpl<$Res> implements $AppUserDtoCopyWith<$Res> {
  _$AppUserDtoCopyWithImpl(this._value, this._then);

  final AppUserDto _value;
  // ignore: unused_field
  final $Res Function(AppUserDto) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object name = freezed,
    Object email = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$AppUserDtoCopyWith<$Res> implements $AppUserDtoCopyWith<$Res> {
  factory _$AppUserDtoCopyWith(
          _AppUserDto value, $Res Function(_AppUserDto) then) =
      __$AppUserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String name,
      String email,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$AppUserDtoCopyWithImpl<$Res> extends _$AppUserDtoCopyWithImpl<$Res>
    implements _$AppUserDtoCopyWith<$Res> {
  __$AppUserDtoCopyWithImpl(
      _AppUserDto _value, $Res Function(_AppUserDto) _then)
      : super(_value, (v) => _then(v as _AppUserDto));

  @override
  _AppUserDto get _value => super._value as _AppUserDto;

  @override
  $Res call({
    Object uid = freezed,
    Object name = freezed,
    Object email = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_AppUserDto(
      uid: uid == freezed ? _value.uid : uid as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppUserDto extends _AppUserDto {
  const _$_AppUserDto(
      {@required this.uid,
      @required this.name,
      @required this.email,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(uid != null),
        assert(name != null),
        assert(email != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AppUserDtoFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String email;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'AppUserDto(uid: $uid, name: $name, email: $email, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUserDto &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$AppUserDtoCopyWith<_AppUserDto> get copyWith =>
      __$AppUserDtoCopyWithImpl<_AppUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppUserDtoToJson(this);
  }
}

abstract class _AppUserDto extends AppUserDto {
  const _AppUserDto._() : super._();
  const factory _AppUserDto(
          {@required String uid,
          @required String name,
          @required String email,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_AppUserDto;

  factory _AppUserDto.fromJson(Map<String, dynamic> json) =
      _$_AppUserDto.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get email;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$AppUserDtoCopyWith<_AppUserDto> get copyWith;
}
