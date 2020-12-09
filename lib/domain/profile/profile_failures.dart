import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failures.freezed.dart';

@freezed
abstract class ProfileFailure with _$ProfileFailure{
  const factory ProfileFailure.insufficientPermission() = _InsufficientPermission;
  const factory ProfileFailure.unknownFailure() = _UnknownFailure;
}