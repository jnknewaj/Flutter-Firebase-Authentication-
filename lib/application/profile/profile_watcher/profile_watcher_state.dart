part of 'profile_watcher_bloc.dart';

@freezed
abstract class ProfileWatcherState with _$ProfileWatcherState {
  const factory ProfileWatcherState.initial() = _Initial;
  const factory ProfileWatcherState.loading() = _Loading;
  const factory ProfileWatcherState.loaded(AppUser appUser) = _Loaded;
  const factory ProfileWatcherState.failure(ProfileFailure failure) = _Failure;
}
