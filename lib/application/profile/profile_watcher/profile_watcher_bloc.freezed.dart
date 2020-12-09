// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileWatcherEventTearOff {
  const _$ProfileWatcherEventTearOff();

// ignore: unused_element
  _WatchStarted watchStarted() {
    return const _WatchStarted();
  }

// ignore: unused_element
  _ProfileReceived profileReceived(
      Either<ProfileFailure, AppUser> failureOrUser) {
    return _ProfileReceived(
      failureOrUser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileWatcherEvent = _$ProfileWatcherEventTearOff();

/// @nodoc
mixin _$ProfileWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchStarted(),
    @required
        Result profileReceived(Either<ProfileFailure, AppUser> failureOrUser),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchStarted(),
    Result profileReceived(Either<ProfileFailure, AppUser> failureOrUser),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchStarted(_WatchStarted value),
    @required Result profileReceived(_ProfileReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchStarted(_WatchStarted value),
    Result profileReceived(_ProfileReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProfileWatcherEventCopyWith<$Res> {
  factory $ProfileWatcherEventCopyWith(
          ProfileWatcherEvent value, $Res Function(ProfileWatcherEvent) then) =
      _$ProfileWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileWatcherEventCopyWithImpl<$Res>
    implements $ProfileWatcherEventCopyWith<$Res> {
  _$ProfileWatcherEventCopyWithImpl(this._value, this._then);

  final ProfileWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchStartedCopyWith<$Res> {
  factory _$WatchStartedCopyWith(
          _WatchStarted value, $Res Function(_WatchStarted) then) =
      __$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchStartedCopyWithImpl<$Res>
    extends _$ProfileWatcherEventCopyWithImpl<$Res>
    implements _$WatchStartedCopyWith<$Res> {
  __$WatchStartedCopyWithImpl(
      _WatchStarted _value, $Res Function(_WatchStarted) _then)
      : super(_value, (v) => _then(v as _WatchStarted));

  @override
  _WatchStarted get _value => super._value as _WatchStarted;
}

/// @nodoc
class _$_WatchStarted implements _WatchStarted {
  const _$_WatchStarted();

  @override
  String toString() {
    return 'ProfileWatcherEvent.watchStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchStarted(),
    @required
        Result profileReceived(Either<ProfileFailure, AppUser> failureOrUser),
  }) {
    assert(watchStarted != null);
    assert(profileReceived != null);
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchStarted(),
    Result profileReceived(Either<ProfileFailure, AppUser> failureOrUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchStarted != null) {
      return watchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchStarted(_WatchStarted value),
    @required Result profileReceived(_ProfileReceived value),
  }) {
    assert(watchStarted != null);
    assert(profileReceived != null);
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchStarted(_WatchStarted value),
    Result profileReceived(_ProfileReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchStarted implements ProfileWatcherEvent {
  const factory _WatchStarted() = _$_WatchStarted;
}

/// @nodoc
abstract class _$ProfileReceivedCopyWith<$Res> {
  factory _$ProfileReceivedCopyWith(
          _ProfileReceived value, $Res Function(_ProfileReceived) then) =
      __$ProfileReceivedCopyWithImpl<$Res>;
  $Res call({Either<ProfileFailure, AppUser> failureOrUser});
}

/// @nodoc
class __$ProfileReceivedCopyWithImpl<$Res>
    extends _$ProfileWatcherEventCopyWithImpl<$Res>
    implements _$ProfileReceivedCopyWith<$Res> {
  __$ProfileReceivedCopyWithImpl(
      _ProfileReceived _value, $Res Function(_ProfileReceived) _then)
      : super(_value, (v) => _then(v as _ProfileReceived));

  @override
  _ProfileReceived get _value => super._value as _ProfileReceived;

  @override
  $Res call({
    Object failureOrUser = freezed,
  }) {
    return _then(_ProfileReceived(
      failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser as Either<ProfileFailure, AppUser>,
    ));
  }
}

/// @nodoc
class _$_ProfileReceived implements _ProfileReceived {
  const _$_ProfileReceived(this.failureOrUser) : assert(failureOrUser != null);

  @override
  final Either<ProfileFailure, AppUser> failureOrUser;

  @override
  String toString() {
    return 'ProfileWatcherEvent.profileReceived(failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileReceived &&
            (identical(other.failureOrUser, failureOrUser) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUser, failureOrUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrUser);

  @override
  _$ProfileReceivedCopyWith<_ProfileReceived> get copyWith =>
      __$ProfileReceivedCopyWithImpl<_ProfileReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchStarted(),
    @required
        Result profileReceived(Either<ProfileFailure, AppUser> failureOrUser),
  }) {
    assert(watchStarted != null);
    assert(profileReceived != null);
    return profileReceived(failureOrUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchStarted(),
    Result profileReceived(Either<ProfileFailure, AppUser> failureOrUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileReceived != null) {
      return profileReceived(failureOrUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchStarted(_WatchStarted value),
    @required Result profileReceived(_ProfileReceived value),
  }) {
    assert(watchStarted != null);
    assert(profileReceived != null);
    return profileReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchStarted(_WatchStarted value),
    Result profileReceived(_ProfileReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileReceived != null) {
      return profileReceived(this);
    }
    return orElse();
  }
}

abstract class _ProfileReceived implements ProfileWatcherEvent {
  const factory _ProfileReceived(
      Either<ProfileFailure, AppUser> failureOrUser) = _$_ProfileReceived;

  Either<ProfileFailure, AppUser> get failureOrUser;
  _$ProfileReceivedCopyWith<_ProfileReceived> get copyWith;
}

/// @nodoc
class _$ProfileWatcherStateTearOff {
  const _$ProfileWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded(AppUser appUser) {
    return _Loaded(
      appUser,
    );
  }

// ignore: unused_element
  _Failure failure(ProfileFailure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileWatcherState = _$ProfileWatcherStateTearOff();

/// @nodoc
mixin _$ProfileWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(AppUser appUser),
    @required Result failure(ProfileFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(AppUser appUser),
    Result failure(ProfileFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProfileWatcherStateCopyWith<$Res> {
  factory $ProfileWatcherStateCopyWith(
          ProfileWatcherState value, $Res Function(ProfileWatcherState) then) =
      _$ProfileWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileWatcherStateCopyWithImpl<$Res>
    implements $ProfileWatcherStateCopyWith<$Res> {
  _$ProfileWatcherStateCopyWithImpl(this._value, this._then);

  final ProfileWatcherState _value;
  // ignore: unused_field
  final $Res Function(ProfileWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ProfileWatcherStateCopyWithImpl<$Res>
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
    return 'ProfileWatcherState.initial()';
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
    @required Result loading(),
    @required Result loaded(AppUser appUser),
    @required Result failure(ProfileFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(AppUser appUser),
    Result failure(ProfileFailure failure),
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
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ProfileWatcherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProfileWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(AppUser appUser),
    @required Result failure(ProfileFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(AppUser appUser),
    Result failure(ProfileFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProfileWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({AppUser appUser});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$ProfileWatcherStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object appUser = freezed,
  }) {
    return _then(_Loaded(
      appUser == freezed ? _value.appUser : appUser as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get appUser {
    if (_value.appUser == null) {
      return null;
    }
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.appUser) : assert(appUser != null);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'ProfileWatcherState.loaded(appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.appUser, appUser) ||
                const DeepCollectionEquality().equals(other.appUser, appUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appUser);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(AppUser appUser),
    @required Result failure(ProfileFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(appUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(AppUser appUser),
    Result failure(ProfileFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ProfileWatcherState {
  const factory _Loaded(AppUser appUser) = _$_Loaded;

  AppUser get appUser;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({ProfileFailure failure});

  $ProfileFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$ProfileWatcherStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed ? _value.failure : failure as ProfileFailure,
    ));
  }

  @override
  $ProfileFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ProfileFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.failure) : assert(failure != null);

  @override
  final ProfileFailure failure;

  @override
  String toString() {
    return 'ProfileWatcherState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(AppUser appUser),
    @required Result failure(ProfileFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(AppUser appUser),
    Result failure(ProfileFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ProfileWatcherState {
  const factory _Failure(ProfileFailure failure) = _$_Failure;

  ProfileFailure get failure;
  _$FailureCopyWith<_Failure> get copyWith;
}
