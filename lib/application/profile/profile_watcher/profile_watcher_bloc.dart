import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:authentication/domain/core/app_user.dart';
import 'package:authentication/domain/profile/i_app_user_repository.dart';
import 'package:authentication/domain/profile/profile_failures.dart';
import 'package:injectable/injectable.dart';

part 'profile_watcher_bloc.freezed.dart';
part 'profile_watcher_event.dart';
part 'profile_watcher_state.dart';

@injectable
class ProfileWatcherBloc
    extends Bloc<ProfileWatcherEvent, ProfileWatcherState> {
  final IAppUserRepository _appUserRepository;
  StreamSubscription _profileSubs;

  ProfileWatcherBloc(
    this._appUserRepository,
  ) : super(const ProfileWatcherState.initial());

  @override
  Stream<ProfileWatcherState> mapEventToState(
    ProfileWatcherEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (event) async* {
        yield const ProfileWatcherState.loading();
        await _profileSubs?.cancel();
        _appUserRepository.watchAppUser().listen((failureOrUser) {
          add(ProfileWatcherEvent.profileReceived(failureOrUser));
        });
      },
      profileReceived: (event) async* {
        yield event.failureOrUser.fold(
          (f) => ProfileWatcherState.failure(f),
          //(user) => ProfileWatcherState.loaded(user),
          (user) {
            return ProfileWatcherState.loaded(user);
          },
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _profileSubs?.cancel();
    return super.close();
  }
}
