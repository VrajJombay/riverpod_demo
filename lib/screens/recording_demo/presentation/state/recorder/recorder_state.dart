import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'recorder_state.freezed.dart';

@freezed
class RecorderState with _$RecorderState {
  factory RecorderState({
    @Default(AsyncLoading()) AsyncValue<bool> recorderInitialize,
    @Default(AsyncData(false)) AsyncValue<bool> recordingInProgress,
    @Default(0.0) double recordingSliderDuration,
    @Default(null) String? recordingPath,
    @Default(AsyncLoading()) AsyncValue<PermissionStatus> permissionStatus,
    @Default('00:00') String recordingTime,
  }) = _RecorderState;
}
