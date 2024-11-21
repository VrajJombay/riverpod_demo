// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerDefaultState {
  AsyncValue<bool> get playerData => throw _privateConstructorUsedError;

  double get playerSliderDuration => throw _privateConstructorUsedError;

  double get maxDuration => throw _privateConstructorUsedError;

  String get filePath => throw _privateConstructorUsedError;

  String get playerTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerDefaultStateCopyWith<PlayerDefaultState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDefaultStateCopyWith<$Res> {
  factory $PlayerDefaultStateCopyWith(PlayerDefaultState value, $Res Function(PlayerDefaultState) then) =
      _$PlayerDefaultStateCopyWithImpl<$Res, PlayerDefaultState>;

  @useResult
  $Res call({AsyncValue<bool> playerData, double playerSliderDuration, double maxDuration, String filePath, String playerTime});
}

/// @nodoc
class _$PlayerDefaultStateCopyWithImpl<$Res, $Val extends PlayerDefaultState> implements $PlayerDefaultStateCopyWith<$Res> {
  _$PlayerDefaultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerData = null,
    Object? playerSliderDuration = null,
    Object? maxDuration = null,
    Object? filePath = null,
    Object? playerTime = null,
  }) {
    return _then(_value.copyWith(
      playerData: null == playerData
          ? _value.playerData
          : playerData // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      playerSliderDuration: null == playerSliderDuration
          ? _value.playerSliderDuration
          : playerSliderDuration // ignore: cast_nullable_to_non_nullable
              as double,
      maxDuration: null == maxDuration
          ? _value.maxDuration
          : maxDuration // ignore: cast_nullable_to_non_nullable
              as double,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      playerTime: null == playerTime
          ? _value.playerTime
          : playerTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerDefaultStateImplCopyWith<$Res> implements $PlayerDefaultStateCopyWith<$Res> {
  factory _$$PlayerDefaultStateImplCopyWith(_$PlayerDefaultStateImpl value, $Res Function(_$PlayerDefaultStateImpl) then) =
      __$$PlayerDefaultStateImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({AsyncValue<bool> playerData, double playerSliderDuration, double maxDuration, String filePath, String playerTime});
}

/// @nodoc
class __$$PlayerDefaultStateImplCopyWithImpl<$Res> extends _$PlayerDefaultStateCopyWithImpl<$Res, _$PlayerDefaultStateImpl>
    implements _$$PlayerDefaultStateImplCopyWith<$Res> {
  __$$PlayerDefaultStateImplCopyWithImpl(_$PlayerDefaultStateImpl _value, $Res Function(_$PlayerDefaultStateImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerData = null,
    Object? playerSliderDuration = null,
    Object? maxDuration = null,
    Object? filePath = null,
    Object? playerTime = null,
  }) {
    return _then(_$PlayerDefaultStateImpl(
      playerData: null == playerData
          ? _value.playerData
          : playerData // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      playerSliderDuration: null == playerSliderDuration
          ? _value.playerSliderDuration
          : playerSliderDuration // ignore: cast_nullable_to_non_nullable
              as double,
      maxDuration: null == maxDuration
          ? _value.maxDuration
          : maxDuration // ignore: cast_nullable_to_non_nullable
              as double,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      playerTime: null == playerTime
          ? _value.playerTime
          : playerTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerDefaultStateImpl implements _PlayerDefaultState {
  _$PlayerDefaultStateImpl(
      {this.playerData = const AsyncLoading(), this.playerSliderDuration = 0.0, this.maxDuration = 0.0, required this.filePath, this.playerTime = '00:00'});

  @override
  @JsonKey()
  final AsyncValue<bool> playerData;
  @override
  @JsonKey()
  final double playerSliderDuration;
  @override
  @JsonKey()
  final double maxDuration;
  @override
  final String filePath;
  @override
  @JsonKey()
  final String playerTime;

  @override
  String toString() {
    return 'PlayerDefaultState(playerData: $playerData, playerSliderDuration: $playerSliderDuration, maxDuration: $maxDuration, filePath: $filePath, playerTime: $playerTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerDefaultStateImpl &&
            (identical(other.playerData, playerData) || other.playerData == playerData) &&
            (identical(other.playerSliderDuration, playerSliderDuration) || other.playerSliderDuration == playerSliderDuration) &&
            (identical(other.maxDuration, maxDuration) || other.maxDuration == maxDuration) &&
            (identical(other.filePath, filePath) || other.filePath == filePath) &&
            (identical(other.playerTime, playerTime) || other.playerTime == playerTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerData, playerSliderDuration, maxDuration, filePath, playerTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerDefaultStateImplCopyWith<_$PlayerDefaultStateImpl> get copyWith =>
      __$$PlayerDefaultStateImplCopyWithImpl<_$PlayerDefaultStateImpl>(this, _$identity);
}

abstract class _PlayerDefaultState implements PlayerDefaultState {
  factory _PlayerDefaultState(
      {final AsyncValue<bool> playerData,
      final double playerSliderDuration,
      final double maxDuration,
      required final String filePath,
      final String playerTime}) = _$PlayerDefaultStateImpl;

  @override
  AsyncValue<bool> get playerData;

  @override
  double get playerSliderDuration;

  @override
  double get maxDuration;

  @override
  String get filePath;

  @override
  String get playerTime;

  @override
  @JsonKey(ignore: true)
  _$$PlayerDefaultStateImplCopyWith<_$PlayerDefaultStateImpl> get copyWith => throw _privateConstructorUsedError;
}
