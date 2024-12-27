// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recorder_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecorderState {
  AsyncValue<bool> get recorderInitialize => throw _privateConstructorUsedError;

  AsyncValue<bool> get recordingInProgress =>
      throw _privateConstructorUsedError;

  double get recordingSliderDuration => throw _privateConstructorUsedError;

  String? get recordingPath => throw _privateConstructorUsedError;

  AsyncValue<PermissionStatus> get permissionStatus =>
      throw _privateConstructorUsedError;

  String get recordingTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecorderStateCopyWith<RecorderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecorderStateCopyWith<$Res> {
  factory $RecorderStateCopyWith(
          RecorderState value, $Res Function(RecorderState) then) =
      _$RecorderStateCopyWithImpl<$Res, RecorderState>;

  @useResult
  $Res call(
      {AsyncValue<bool> recorderInitialize,
      AsyncValue<bool> recordingInProgress,
      double recordingSliderDuration,
      String? recordingPath,
      AsyncValue<PermissionStatus> permissionStatus,
      String recordingTime});
}

/// @nodoc
class _$RecorderStateCopyWithImpl<$Res, $Val extends RecorderState>
    implements $RecorderStateCopyWith<$Res> {
  _$RecorderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recorderInitialize = null,
    Object? recordingInProgress = null,
    Object? recordingSliderDuration = null,
    Object? recordingPath = freezed,
    Object? permissionStatus = null,
    Object? recordingTime = null,
  }) {
    return _then(_value.copyWith(
      recorderInitialize: null == recorderInitialize
          ? _value.recorderInitialize
          : recorderInitialize // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      recordingInProgress: null == recordingInProgress
          ? _value.recordingInProgress
          : recordingInProgress // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      recordingSliderDuration: null == recordingSliderDuration
          ? _value.recordingSliderDuration
          : recordingSliderDuration // ignore: cast_nullable_to_non_nullable
              as double,
      recordingPath: freezed == recordingPath
          ? _value.recordingPath
          : recordingPath // ignore: cast_nullable_to_non_nullable
              as String?,
      permissionStatus: null == permissionStatus
          ? _value.permissionStatus
          : permissionStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<PermissionStatus>,
      recordingTime: null == recordingTime
          ? _value.recordingTime
          : recordingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecorderStateImplCopyWith<$Res>
    implements $RecorderStateCopyWith<$Res> {
  factory _$$RecorderStateImplCopyWith(
          _$RecorderStateImpl value, $Res Function(_$RecorderStateImpl) then) =
      __$$RecorderStateImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {AsyncValue<bool> recorderInitialize,
      AsyncValue<bool> recordingInProgress,
      double recordingSliderDuration,
      String? recordingPath,
      AsyncValue<PermissionStatus> permissionStatus,
      String recordingTime});
}

/// @nodoc
class __$$RecorderStateImplCopyWithImpl<$Res>
    extends _$RecorderStateCopyWithImpl<$Res, _$RecorderStateImpl>
    implements _$$RecorderStateImplCopyWith<$Res> {
  __$$RecorderStateImplCopyWithImpl(
      _$RecorderStateImpl _value, $Res Function(_$RecorderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recorderInitialize = null,
    Object? recordingInProgress = null,
    Object? recordingSliderDuration = null,
    Object? recordingPath = freezed,
    Object? permissionStatus = null,
    Object? recordingTime = null,
  }) {
    return _then(_$RecorderStateImpl(
      recorderInitialize: null == recorderInitialize
          ? _value.recorderInitialize
          : recorderInitialize // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      recordingInProgress: null == recordingInProgress
          ? _value.recordingInProgress
          : recordingInProgress // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      recordingSliderDuration: null == recordingSliderDuration
          ? _value.recordingSliderDuration
          : recordingSliderDuration // ignore: cast_nullable_to_non_nullable
              as double,
      recordingPath: freezed == recordingPath
          ? _value.recordingPath
          : recordingPath // ignore: cast_nullable_to_non_nullable
              as String?,
      permissionStatus: null == permissionStatus
          ? _value.permissionStatus
          : permissionStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<PermissionStatus>,
      recordingTime: null == recordingTime
          ? _value.recordingTime
          : recordingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecorderStateImpl implements _RecorderState {
  _$RecorderStateImpl(
      {this.recorderInitialize = const AsyncLoading(),
      this.recordingInProgress = const AsyncData(false),
      this.recordingSliderDuration = 0.0,
      this.recordingPath = null,
      this.permissionStatus = const AsyncLoading(),
      this.recordingTime = '00:00'});

  @override
  @JsonKey()
  final AsyncValue<bool> recorderInitialize;
  @override
  @JsonKey()
  final AsyncValue<bool> recordingInProgress;
  @override
  @JsonKey()
  final double recordingSliderDuration;
  @override
  @JsonKey()
  final String? recordingPath;
  @override
  @JsonKey()
  final AsyncValue<PermissionStatus> permissionStatus;
  @override
  @JsonKey()
  final String recordingTime;

  @override
  String toString() {
    return 'RecorderState(recorderInitialize: $recorderInitialize, recordingInProgress: $recordingInProgress, recordingSliderDuration: $recordingSliderDuration, recordingPath: $recordingPath, permissionStatus: $permissionStatus, recordingTime: $recordingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecorderStateImpl &&
            (identical(other.recorderInitialize, recorderInitialize) ||
                other.recorderInitialize == recorderInitialize) &&
            (identical(other.recordingInProgress, recordingInProgress) ||
                other.recordingInProgress == recordingInProgress) &&
            (identical(
                    other.recordingSliderDuration, recordingSliderDuration) ||
                other.recordingSliderDuration == recordingSliderDuration) &&
            (identical(other.recordingPath, recordingPath) ||
                other.recordingPath == recordingPath) &&
            (identical(other.permissionStatus, permissionStatus) ||
                other.permissionStatus == permissionStatus) &&
            (identical(other.recordingTime, recordingTime) ||
                other.recordingTime == recordingTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      recorderInitialize,
      recordingInProgress,
      recordingSliderDuration,
      recordingPath,
      permissionStatus,
      recordingTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecorderStateImplCopyWith<_$RecorderStateImpl> get copyWith =>
      __$$RecorderStateImplCopyWithImpl<_$RecorderStateImpl>(this, _$identity);
}

abstract class _RecorderState implements RecorderState {
  factory _RecorderState(
      {final AsyncValue<bool> recorderInitialize,
      final AsyncValue<bool> recordingInProgress,
      final double recordingSliderDuration,
      final String? recordingPath,
      final AsyncValue<PermissionStatus> permissionStatus,
      final String recordingTime}) = _$RecorderStateImpl;

  @override
  AsyncValue<bool> get recorderInitialize;

  @override
  AsyncValue<bool> get recordingInProgress;

  @override
  double get recordingSliderDuration;

  @override
  String? get recordingPath;

  @override
  AsyncValue<PermissionStatus> get permissionStatus;

  @override
  String get recordingTime;

  @override
  @JsonKey(ignore: true)
  _$$RecorderStateImplCopyWith<_$RecorderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
