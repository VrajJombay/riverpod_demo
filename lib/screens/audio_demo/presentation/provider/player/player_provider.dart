import 'dart:async';
import 'dart:math';

import 'package:audio_session/audio_session.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../state/player/player_state.dart';

part 'player_provider.g.dart';

@riverpod
class Player extends _$Player {
  FlutterSoundPlayer _player = FlutterSoundPlayer();

  // Codec _codec = Codec.aacADTS;
  StreamSubscription? _playerSubscription;
  AudioSession? session;

  @override
  PlayerDefaultState build(String filePath) {
    ref.onDispose(_onDispose);
    return PlayerDefaultState(filePath: filePath);
  }

  Future<void> init() async {
    state = state.copyWith(playerData: AsyncLoading());
    try {
      await _openPlayer();
      session = await AudioSession.instance;
      await session?.configure(
        AudioSessionConfiguration(
          avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
          avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.allowBluetooth | AVAudioSessionCategoryOptions.defaultToSpeaker,
          avAudioSessionMode: AVAudioSessionMode.spokenAudio,
          avAudioSessionRouteSharingPolicy: AVAudioSessionRouteSharingPolicy.defaultPolicy,
          avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.notifyOthersOnDeactivation,
          androidAudioAttributes: const AndroidAudioAttributes(
            contentType: AndroidAudioContentType.speech,
            flags: AndroidAudioFlags.none,
            usage: AndroidAudioUsage.voiceCommunication,
          ),
          androidAudioFocusGainType: AndroidAudioFocusGainType.gainTransientExclusive,
          androidWillPauseWhenDucked: true,
        ),
      );
      await _startPlayer();
    } catch (e, stackTrace) {
      state = state.copyWith(playerData: AsyncError(e, stackTrace));
    }
  }

  Future<void> _openPlayer() async {
    await _player.openPlayer();
    await _player.setSubscriptionDuration(const Duration(milliseconds: 10));
  }

  Future<void> _startPlayer() async {
    await session?.setActive(true);
    if (state.filePath.isNotEmpty) {
      try {
        Duration? duration = await _player.startPlayer(
          fromURI: state.filePath,
          // codec: _codec,
          // sampleRate: 44100,
          whenFinished: () async {
            await _stopPlayer();
          },
        );
        await _player.pausePlayer();
        state = state.copyWith(playerData: AsyncData(false), maxDuration: (duration?.inMilliseconds ?? 0.0).toDouble());
      } catch (e, stackTrace) {
        state = state.copyWith(playerData: AsyncError(e, stackTrace));
      }
    } else {
      state = state.copyWith(playerData: AsyncError('File Not Found', StackTrace.empty));
      return;
    }
    _addListener();

    ///another approach but not work for networkUrl
    /*Uint8List? dataBuffer;
    if ((state.filePath?.isNotEmpty ?? false) && state.filePath != null) {
      if (await fileExists(state.filePath!)) {
        dataBuffer = await makeBuffer(state.filePath!);
      }
    } else {
      state = state.copyWith(playerData: AsyncError('File Not Found', StackTrace.empty));
      return;
    }
    if (dataBuffer != null) {
      try {
        await _player.startPlayer(
            fromDataBuffer: dataBuffer,
            codec: _codec,
            whenFinished: () {});
        if (isFirstTime) await _player.pausePlayer();
        state = state.copyWith(playerData: AsyncData(false));
      } catch (e, stackTrace) {
        state = state.copyWith(playerData: AsyncError(e, stackTrace));
      }
    } else {
      state = state.copyWith(playerData: AsyncError('File Not Found', StackTrace.empty));
      return;
    }*/
  }

  void _addListener() async {
    await _cancelPlayerSubscription();
    try {
      _playerSubscription = _player.onProgress!.listen((position) {
        var maxDuration = position.duration.inMilliseconds.toDouble();
        if (maxDuration <= 0) maxDuration = 0;
        var sliderCurrentPosition = min(position.position.inMilliseconds.toDouble(), maxDuration);
        if (sliderCurrentPosition < 0) sliderCurrentPosition = 0;
        var date = DateTime.fromMillisecondsSinceEpoch(position.position.inMilliseconds, isUtc: true);
        var txt = DateFormat('mm:ss').format(date);
        state = state.copyWith(playerSliderDuration: sliderCurrentPosition, playerTime: txt);
      });
    } catch (e, stackTrace) {
      state = state.copyWith(playerData: AsyncError(e, stackTrace));
    }
  }

  Future<void> _stopPlayer() async {
    try {
      await _player.pausePlayer();
      seekTo(0.0);
      state = state.copyWith(playerData: AsyncData(false), playerTime: '00:00');
      await session?.setActive(false);
    } catch (e, stackTrace) {
      state = state.copyWith(playerData: AsyncError(e, stackTrace));
    }
  }

  void seekTo(double milliSec) async {
    try {
      await _player.seekToPlayer(Duration(milliseconds: milliSec.toInt()));
      state = state.copyWith(playerSliderDuration: milliSec);
    } catch (e, stackTrace) {
      state = state.copyWith(playerData: AsyncError(e, stackTrace));
    }
  }

  Future<void> pausePlayer() async {
    if (_player.isPlaying) {
      try {
        await _player.pausePlayer();
        state = state.copyWith(playerData: AsyncData(false));
        await session?.setActive(false);
      } catch (e, stackTrace) {
        state = state.copyWith(playerData: AsyncError(e, stackTrace));
      }
    }
  }

  Future<void> playAndPausePlayer() async {
    try {
      if (_player.isPlaying) {
        await _player.pausePlayer();
        state = state.copyWith(playerData: AsyncData(false));
        await session?.setActive(false);
      } else {
        await _player.resumePlayer();
        state = state.copyWith(playerData: AsyncData(true));
        await session?.setActive(true);
      }
    } catch (e, stackTrace) {
      state = state.copyWith(playerData: AsyncError(e, stackTrace));
    }
  }

  Future<void> _cancelPlayerSubscription() async {
    if (_playerSubscription != null) {
      await _playerSubscription?.cancel();
      _playerSubscription = null;
    }
  }

  Future<void> _closePlayer() async {
    await _player.closePlayer();
  }

  void _onDispose() async {
    print('player dispose called');
    await _cancelPlayerSubscription();
    await _closePlayer();
  }

  ///another approach but not work for networkUrl
/* Future<Uint8List?> _makeBuffer(String path) async {
    try {
      if (!await _fileExists(path)) return null;
      var file = File(path);
      // file.openRead();
      var contents = await file.readAsBytes();
      return contents;
    } catch (e) {
      state = state.copyWith(playerData: AsyncError('File Not Found', StackTrace.empty));
      return null;
    }
  }

  Future<bool> _fileExists(String path) async {
    return await File(path).exists();
  }*/
}
