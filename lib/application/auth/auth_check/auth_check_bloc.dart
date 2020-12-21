import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:authentication/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'auth_check_bloc.freezed.dart';
part 'auth_check_event.dart';
part 'auth_check_state.dart';

@injectable
class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  final IAuthFacade _authFacade;

  AuthCheckBloc(
    this._authFacade,
  ) : super(const AuthCheckState.initial());

  @override
  Stream<AuthCheckState> mapEventToState(
    AuthCheckEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        final userOption = await _authFacade.getSignedInUserId();
        yield userOption.fold(
          () => const AuthCheckState.unAuthenticated(),
          (a) => const AuthCheckState.authenticated(),
        );
      },
      signOutPressed: (e) async* {
        await _authFacade.signOut();
        yield const AuthCheckState.unAuthenticated();
      },
    );
  }
}
