part of 'auth_check_bloc.dart';

@freezed
abstract class AuthCheckEvent with _$AuthCheckEvent {
  const factory AuthCheckEvent.started() = _Started;
  const factory AuthCheckEvent.signOutPressed() = _SignOutPressed;
}