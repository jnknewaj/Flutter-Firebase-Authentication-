// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// ignore: unused_element
T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthCheckEventTearOff {
  const _$AuthCheckEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _SignOutPressed signOutPressed() {
    return const _SignOutPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthCheckEvent = _$AuthCheckEventTearOff();

/// @nodoc
mixin _$AuthCheckEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result signOutPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result signOutPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result signOutPressed(_SignOutPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result signOutPressed(_SignOutPressed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthCheckEventCopyWith<$Res> {
  factory $AuthCheckEventCopyWith(
          AuthCheckEvent value, $Res Function(AuthCheckEvent) then) =
      _$AuthCheckEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckEventCopyWithImpl<$Res>
    implements $AuthCheckEventCopyWith<$Res> {
  _$AuthCheckEventCopyWithImpl(this._value, this._then);

  final AuthCheckEvent _value;
  // ignore: unused_field
  final $Res Function(AuthCheckEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AuthCheckEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthCheckEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result signOutPressed(),
  }) {
    assert(started != null);
    assert(signOutPressed != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result signOutPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result signOutPressed(_SignOutPressed value),
  }) {
    assert(started != null);
    assert(signOutPressed != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result signOutPressed(_SignOutPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthCheckEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SignOutPressedCopyWith<$Res> {
  factory _$SignOutPressedCopyWith(
          _SignOutPressed value, $Res Function(_SignOutPressed) then) =
      __$SignOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutPressedCopyWithImpl<$Res>
    extends _$AuthCheckEventCopyWithImpl<$Res>
    implements _$SignOutPressedCopyWith<$Res> {
  __$SignOutPressedCopyWithImpl(
      _SignOutPressed _value, $Res Function(_SignOutPressed) _then)
      : super(_value, (v) => _then(v as _SignOutPressed));

  @override
  _SignOutPressed get _value => super._value as _SignOutPressed;
}

/// @nodoc
class _$_SignOutPressed implements _SignOutPressed {
  const _$_SignOutPressed();

  @override
  String toString() {
    return 'AuthCheckEvent.signOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result signOutPressed(),
  }) {
    assert(started != null);
    assert(signOutPressed != null);
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result signOutPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result signOutPressed(_SignOutPressed value),
  }) {
    assert(started != null);
    assert(signOutPressed != null);
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result signOutPressed(_SignOutPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressed != null) {
      return signOutPressed(this);
    }
    return orElse();
  }
}

abstract class _SignOutPressed implements AuthCheckEvent {
  const factory _SignOutPressed() = _$_SignOutPressed;
}

/// @nodoc
class _$AuthCheckStateTearOff {
  const _$AuthCheckStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Authenticated authenticated() {
    return const _Authenticated();
  }

// ignore: unused_element
  _UnAuthenticated unAuthenticated() {
    return const _UnAuthenticated();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthCheckState = _$AuthCheckStateTearOff();

/// @nodoc
mixin _$AuthCheckState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthCheckStateCopyWith<$Res> {
  factory $AuthCheckStateCopyWith(
          AuthCheckState value, $Res Function(AuthCheckState) then) =
      _$AuthCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckStateCopyWithImpl<$Res>
    implements $AuthCheckStateCopyWith<$Res> {
  _$AuthCheckStateCopyWithImpl(this._value, this._then);

  final AuthCheckState _value;
  // ignore: unused_field
  final $Res Function(AuthCheckState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthCheckStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthCheckState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthCheckState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthCheckStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthCheckState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthCheckState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$UnAuthenticatedCopyWith<$Res> {
  factory _$UnAuthenticatedCopyWith(
          _UnAuthenticated value, $Res Function(_UnAuthenticated) then) =
      __$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthCheckStateCopyWithImpl<$Res>
    implements _$UnAuthenticatedCopyWith<$Res> {
  __$UnAuthenticatedCopyWithImpl(
      _UnAuthenticated _value, $Res Function(_UnAuthenticated) _then)
      : super(_value, (v) => _then(v as _UnAuthenticated));

  @override
  _UnAuthenticated get _value => super._value as _UnAuthenticated;
}

/// @nodoc
class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated();

  @override
  String toString() {
    return 'AuthCheckState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AuthCheckState {
  const factory _UnAuthenticated() = _$_UnAuthenticated;
}
