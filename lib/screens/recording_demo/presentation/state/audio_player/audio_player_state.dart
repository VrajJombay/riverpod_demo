import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_player_state.freezed.dart';

@freezed
class AudioPlayerState with _$AudioPlayerState {
  factory AudioPlayerState({
    @Default(false) bool canRecordOrPlay,
    @Default(null) String? filePath,
  }) = _AudioPlayerState;
}
