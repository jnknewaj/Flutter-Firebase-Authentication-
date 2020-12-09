// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileFormEventTearOff {
  const _$ProfileFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<AppUser> initialUserOption) {
    return _Initialized(
      initialUserOption,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

// ignore: unused_element
  _EmailChanged emailChanged(String emailStr) {
    return _EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }

// ignore: unused_element
  _ThirdPartySignInSaved thirdPartySignInSaved(AppUser appUser) {
    return _ThirdPartySignInSaved(
      appUser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileFormEvent = _$ProfileFormEventTearOff();

/// @nodoc
mixin _$ProfileFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<AppUser> initialUserOption),
    @required Result nameChanged(String nameStr),
    @required Result emailChanged(String emailStr),
    @required Result saved(),
    @required Result thirdPartySignInSaved(AppUser appUser),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<AppUser> initialUserOption),
    Result nameChanged(String nameStr),
    Result emailChanged(String emailStr),
    Result saved(),
    Result thirdPartySignInSaved(AppUser appUser),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result saved(_Saved value),
    @required Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result emailChanged(_EmailChanged value),
    Result saved(_Saved value),
    Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProfileFormEventCopyWith<$Res> {
  factory $ProfileFormEventCopyWith(
          ProfileFormEvent value, $Res Function(ProfileFormEvent) then) =
      _$ProfileFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileFormEventCopyWithImpl<$Res>
    implements $ProfileFormEventCopyWith<$Res> {
  _$ProfileFormEventCopyWithImpl(this._value, this._then);

  final ProfileFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<AppUser> initialUserOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialUserOption = freezed,
  }) {
    return _then(_Initialized(
      initialUserOption == freezed
          ? _value.initialUserOption
          : initialUserOption as Option<AppUser>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialUserOption)
      : assert(initialUserOption != null);

  @override
  final Option<AppUser> initialUserOption;

  @override
  String toString() {
    return 'ProfileFormEvent.initialized(initialUserOption: $initialUserOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialUserOption, initialUserOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialUserOption, initialUserOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialUserOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<AppUser> initialUserOption),
    @required Result nameChanged(String nameStr),
    @required Result emailChanged(String emailStr),
    @required Result saved(),
    @required Result thirdPartySignInSaved(AppUser appUser),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(saved != null);
    assert(thirdPartySignInSaved != null);
    return initialized(initialUserOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<AppUser> initialUserOption),
    Result nameChanged(String nameStr),
    Result emailChanged(String emailStr),
    Result saved(),
    Result thirdPartySignInSaved(AppUser appUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialUserOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result saved(_Saved value),
    @required Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(saved != null);
    assert(thirdPartySignInSaved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result emailChanged(_EmailChanged value),
    Result saved(_Saved value),
    Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ProfileFormEvent {
  const factory _Initialized(Option<AppUser> initialUserOption) =
      _$_Initialized;

  Option<AppUser> get initialUserOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'ProfileFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<AppUser> initialUserOption),
    @required Result nameChanged(String nameStr),
    @required Result emailChanged(String emailStr),
    @required Result saved(),
    @required Result thirdPartySignInSaved(AppUser appUser),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(saved != null);
    assert(thirdPartySignInSaved != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<AppUser> initialUserOption),
    Result nameChanged(String nameStr),
    Result emailChanged(String emailStr),
    Result saved(),
    Result thirdPartySignInSaved(AppUser appUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result saved(_Saved value),
    @required Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(saved != null);
    assert(thirdPartySignInSaved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result emailChanged(_EmailChanged value),
    Result saved(_Saved value),
    Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ProfileFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(_EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'ProfileFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<AppUser> initialUserOption),
    @required Result nameChanged(String nameStr),
    @required Result emailChanged(String emailStr),
    @required Result saved(),
    @required Result thirdPartySignInSaved(AppUser appUser),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(saved != null);
    assert(thirdPartySignInSaved != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<AppUser> initialUserOption),
    Result nameChanged(String nameStr),
    Result emailChanged(String emailStr),
    Result saved(),
    Result thirdPartySignInSaved(AppUser appUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result saved(_Saved value),
    @required Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(saved != null);
    assert(thirdPartySignInSaved != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result emailChanged(_EmailChanged value),
    Result saved(_Saved value),
    Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements ProfileFormEvent {
  const factory _EmailChanged(String emailStr) = _$_EmailChanged;

  String get emailStr;
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ProfileFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<AppUser> initialUserOption),
    @required Result nameChanged(String nameStr),
    @required Result emailChanged(String emailStr),
    @required Result saved(),
    @required Result thirdPartySignInSaved(AppUser appUser),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(saved != null);
    assert(thirdPartySignInSaved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<AppUser> initialUserOption),
    Result nameChanged(String nameStr),
    Result emailChanged(String emailStr),
    Result saved(),
    Result thirdPartySignInSaved(AppUser appUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result saved(_Saved value),
    @required Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(saved != null);
    assert(thirdPartySignInSaved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result emailChanged(_EmailChanged value),
    Result saved(_Saved value),
    Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ProfileFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$ThirdPartySignInSavedCopyWith<$Res> {
  factory _$ThirdPartySignInSavedCopyWith(_ThirdPartySignInSaved value,
          $Res Function(_ThirdPartySignInSaved) then) =
      __$ThirdPartySignInSavedCopyWithImpl<$Res>;
  $Res call({AppUser appUser});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$ThirdPartySignInSavedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$ThirdPartySignInSavedCopyWith<$Res> {
  __$ThirdPartySignInSavedCopyWithImpl(_ThirdPartySignInSaved _value,
      $Res Function(_ThirdPartySignInSaved) _then)
      : super(_value, (v) => _then(v as _ThirdPartySignInSaved));

  @override
  _ThirdPartySignInSaved get _value => super._value as _ThirdPartySignInSaved;

  @override
  $Res call({
    Object appUser = freezed,
  }) {
    return _then(_ThirdPartySignInSaved(
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
class _$_ThirdPartySignInSaved implements _ThirdPartySignInSaved {
  const _$_ThirdPartySignInSaved(this.appUser) : assert(appUser != null);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'ProfileFormEvent.thirdPartySignInSaved(appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThirdPartySignInSaved &&
            (identical(other.appUser, appUser) ||
                const DeepCollectionEquality().equals(other.appUser, appUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appUser);

  @override
  _$ThirdPartySignInSavedCopyWith<_ThirdPartySignInSaved> get copyWith =>
      __$ThirdPartySignInSavedCopyWithImpl<_ThirdPartySignInSaved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<AppUser> initialUserOption),
    @required Result nameChanged(String nameStr),
    @required Result emailChanged(String emailStr),
    @required Result saved(),
    @required Result thirdPartySignInSaved(AppUser appUser),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(saved != null);
    assert(thirdPartySignInSaved != null);
    return thirdPartySignInSaved(appUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<AppUser> initialUserOption),
    Result nameChanged(String nameStr),
    Result emailChanged(String emailStr),
    Result saved(),
    Result thirdPartySignInSaved(AppUser appUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (thirdPartySignInSaved != null) {
      return thirdPartySignInSaved(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result saved(_Saved value),
    @required Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(saved != null);
    assert(thirdPartySignInSaved != null);
    return thirdPartySignInSaved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result emailChanged(_EmailChanged value),
    Result saved(_Saved value),
    Result thirdPartySignInSaved(_ThirdPartySignInSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (thirdPartySignInSaved != null) {
      return thirdPartySignInSaved(this);
    }
    return orElse();
  }
}

abstract class _ThirdPartySignInSaved implements ProfileFormEvent {
  const factory _ThirdPartySignInSaved(AppUser appUser) =
      _$_ThirdPartySignInSaved;

  AppUser get appUser;
  _$ThirdPartySignInSavedCopyWith<_ThirdPartySignInSaved> get copyWith;
}

/// @nodoc
class _$ProfileFormStateTearOff {
  const _$ProfileFormStateTearOff();

// ignore: unused_element
  _ProfileFormState call(
      {@required
          AppUser appUser,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool showErrorMessages,
      @required
          Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ProfileFormState(
      appUser: appUser,
      isEditing: isEditing,
      isSaving: isSaving,
      showErrorMessages: showErrorMessages,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileFormState = _$ProfileFormStateTearOff();

/// @nodoc
mixin _$ProfileFormState {
  AppUser get appUser;
  bool get isEditing;
  bool get isSaving;
  bool get showErrorMessages;
  Option<Either<ProfileFailure, Unit>> get saveFailureOrSuccessOption;

  $ProfileFormStateCopyWith<ProfileFormState> get copyWith;
}

/// @nodoc
abstract class $ProfileFormStateCopyWith<$Res> {
  factory $ProfileFormStateCopyWith(
          ProfileFormState value, $Res Function(ProfileFormState) then) =
      _$ProfileFormStateCopyWithImpl<$Res>;
  $Res call(
      {AppUser appUser,
      bool isEditing,
      bool isSaving,
      bool showErrorMessages,
      Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class _$ProfileFormStateCopyWithImpl<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  _$ProfileFormStateCopyWithImpl(this._value, this._then);

  final ProfileFormState _value;
  // ignore: unused_field
  final $Res Function(ProfileFormState) _then;

  @override
  $Res call({
    Object appUser = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object showErrorMessages = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      appUser: appUser == freezed ? _value.appUser : appUser as AppUser,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ProfileFailure, Unit>>,
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
abstract class _$ProfileFormStateCopyWith<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  factory _$ProfileFormStateCopyWith(
          _ProfileFormState value, $Res Function(_ProfileFormState) then) =
      __$ProfileFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AppUser appUser,
      bool isEditing,
      bool isSaving,
      bool showErrorMessages,
      Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$ProfileFormStateCopyWithImpl<$Res>
    extends _$ProfileFormStateCopyWithImpl<$Res>
    implements _$ProfileFormStateCopyWith<$Res> {
  __$ProfileFormStateCopyWithImpl(
      _ProfileFormState _value, $Res Function(_ProfileFormState) _then)
      : super(_value, (v) => _then(v as _ProfileFormState));

  @override
  _ProfileFormState get _value => super._value as _ProfileFormState;

  @override
  $Res call({
    Object appUser = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object showErrorMessages = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProfileFormState(
      appUser: appUser == freezed ? _value.appUser : appUser as AppUser,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ProfileFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ProfileFormState implements _ProfileFormState {
  const _$_ProfileFormState(
      {@required this.appUser,
      @required this.isEditing,
      @required this.isSaving,
      @required this.showErrorMessages,
      @required this.saveFailureOrSuccessOption})
      : assert(appUser != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(showErrorMessages != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final AppUser appUser;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProfileFormState(appUser: $appUser, isEditing: $isEditing, isSaving: $isSaving, showErrorMessages: $showErrorMessages, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileFormState &&
            (identical(other.appUser, appUser) ||
                const DeepCollectionEquality()
                    .equals(other.appUser, appUser)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appUser) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith =>
      __$ProfileFormStateCopyWithImpl<_ProfileFormState>(this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  const factory _ProfileFormState(
      {@required
          AppUser appUser,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool showErrorMessages,
      @required
          Option<Either<ProfileFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_ProfileFormState;

  @override
  AppUser get appUser;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<ProfileFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith;
}
