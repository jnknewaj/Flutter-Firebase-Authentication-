import 'dart:async';
import 'dart:io';
import 'package:authentication/domain/auth/value_objects.dart';
import 'package:authentication/domain/core/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:authentication/domain/core/app_user.dart';
import 'package:authentication/domain/profile/i_app_user_repository.dart';
import 'package:authentication/domain/profile/profile_failures.dart';
import 'package:injectable/injectable.dart';

part 'profile_form_bloc.freezed.dart';
part 'profile_form_event.dart';
part 'profile_form_state.dart';

/// initial user profile just have name and email field (validated)
/// called only after successful user registration
@injectable
class ProfileFormBloc extends Bloc<ProfileFormEvent, ProfileFormState> {
  final IAppUserRepository _repository;
  ProfileFormBloc(
    this._repository,
  ) : super(ProfileFormState.initial());

  @override
  Stream<ProfileFormState> mapEventToState(
    ProfileFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialUserOption.fold(
          () => state,
          (initialuser) => state.copyWith(
            appUser: initialuser,
            isEditing: true,
          ),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          appUser:
              state.appUser.copyWith(emailAddress: EmailAddress(e.emailStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          appUser: state.appUser.copyWith(name: TextData(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          appUser:
              state.appUser.copyWith(description: TextData(e.descriptionStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      profilePicChanged: (e) async* {
        Either<ProfileFailure, String> failureOrSuccess;
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        if (state.appUser.failureOption.isNone()) {
          if (e.image != null) {
            failureOrSuccess = await _repository.uploadProfileImage(e.image);
          }
        }
        yield state.copyWith(
          appUser: state.appUser.copyWith(
            profilePictureUrl: failureOrSuccess.fold(
              (l) => null,
              (r) => r,
            ),
          ),
          imageUploadFaiureOrSuccessOption: optionOf(failureOrSuccess),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<ProfileFailure, Unit> failureOrSuccess;
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        if (state.appUser.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _repository.updateAppUser(state.appUser)
              : await _repository.createAppUser(state.appUser);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      thirdPartySignInSaved: (e) async* {
        Either<ProfileFailure, Unit> failureOrUnit;
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        // todo check if new user or old user
        // todo 'create' for new, 'skip' for old
        failureOrUnit = await _repository.createAppUser(e.appUser);
        yield state.copyWith(
          isSaving: false,
          saveFailureOrSuccessOption: optionOf(failureOrUnit),
        );
      },
    );
  }
}
