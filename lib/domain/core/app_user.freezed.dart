// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

// ignore: unused_element
  _AppUser call(
      {@required UniqueId id,
      @required TextData name,
      @required EmailAddress emailAddress,
      String profilePictureUrl,
      TextData description}) {
    return _AppUser(
      id: id,
      name: name,
      emailAddress: emailAddress,
      profilePictureUrl: profilePictureUrl,
      description: description,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  UniqueId get id;
  TextData get name;
  EmailAddress get emailAddress;
  String get profilePictureUrl;
  TextData get description;

  $AppUserCopyWith<AppUser> get copyWith;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      TextData name,
      EmailAddress emailAddress,
      String profilePictureUrl,
      TextData description});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object profilePictureUrl = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as TextData,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      profilePictureUrl: profilePictureUrl == freezed
          ? _value.profilePictureUrl
          : profilePictureUrl as String,
      description:
          description == freezed ? _value.description : description as TextData,
    ));
  }
}

/// @nodoc
abstract class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) then) =
      __$AppUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      TextData name,
      EmailAddress emailAddress,
      String profilePictureUrl,
      TextData description});
}

/// @nodoc
class __$AppUserCopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(_AppUser _value, $Res Function(_AppUser) _then)
      : super(_value, (v) => _then(v as _AppUser));

  @override
  _AppUser get _value => super._value as _AppUser;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object profilePictureUrl = freezed,
    Object description = freezed,
  }) {
    return _then(_AppUser(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as TextData,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      profilePictureUrl: profilePictureUrl == freezed
          ? _value.profilePictureUrl
          : profilePictureUrl as String,
      description:
          description == freezed ? _value.description : description as TextData,
    ));
  }
}

/// @nodoc
class _$_AppUser extends _AppUser {
  const _$_AppUser(
      {@required this.id,
      @required this.name,
      @required this.emailAddress,
      this.profilePictureUrl,
      this.description})
      : assert(id != null),
        assert(name != null),
        assert(emailAddress != null),
        super._();

  @override
  final UniqueId id;
  @override
  final TextData name;
  @override
  final EmailAddress emailAddress;
  @override
  final String profilePictureUrl;
  @override
  final TextData description;

  @override
  String toString() {
    return 'AppUser(id: $id, name: $name, emailAddress: $emailAddress, profilePictureUrl: $profilePictureUrl, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profilePictureUrl, profilePictureUrl)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(profilePictureUrl) ^
      const DeepCollectionEquality().hash(description);

  @override
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);
}

abstract class _AppUser extends AppUser {
  const _AppUser._() : super._();
  const factory _AppUser(
      {@required UniqueId id,
      @required TextData name,
      @required EmailAddress emailAddress,
      String profilePictureUrl,
      TextData description}) = _$_AppUser;

  @override
  UniqueId get id;
  @override
  TextData get name;
  @override
  EmailAddress get emailAddress;
  @override
  String get profilePictureUrl;
  @override
  TextData get description;
  @override
  _$AppUserCopyWith<_AppUser> get copyWith;
}
