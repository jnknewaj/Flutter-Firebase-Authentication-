part of 'profile_form_bloc.dart';

@freezed
abstract class ProfileFormEvent with _$ProfileFormEvent {
  const factory ProfileFormEvent.initialized(
      Option<AppUser> initialUserOption) = _Initialized;
  const factory ProfileFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory ProfileFormEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory ProfileFormEvent.saved() = _Saved;
  // only inside auth pages
  const factory ProfileFormEvent.thirdPartySignInSaved(AppUser appUser) = _ThirdPartySignInSaved;
}
