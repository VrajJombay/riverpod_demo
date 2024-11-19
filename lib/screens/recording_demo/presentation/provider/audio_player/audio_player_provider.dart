import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../state/audio_player/audio_player_state.dart';

part 'audio_player_provider.g.dart';

@riverpod
class AudioPlayer extends _$AudioPlayer {
  @override
  AudioPlayerState build() {
    return AudioPlayerState();
  }

  void canRecordOrPlay(bool canRecordOrPlay) {
    state = state.copyWith(canRecordOrPlay: canRecordOrPlay, filePath: null);
  }

  void recordingCompleted(String fileUrl) {
    state = state.copyWith(filePath: fileUrl);
  }
}
