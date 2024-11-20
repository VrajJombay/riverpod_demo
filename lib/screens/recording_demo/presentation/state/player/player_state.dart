import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_state.freezed.dart';

@freezed
class PlayerDefaultState with _$PlayerDefaultState {
  factory PlayerDefaultState({
    @Default(AsyncLoading()) AsyncValue<bool> playerData,
    @Default(0.0) double playerSliderDuration,
    @Default(0.0) double maxDuration,
    required String filePath,
    @Default('00:00') String playerTime,
  }) = _PlayerDefaultState;
}
