import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../state/recorder/recorder_state.dart';

part 'recorder_provider.g.dart';

@riverpod
class Recorder extends _$Recorder {
  FlutterSoundRecorder _recorder = FlutterSoundRecorder();
  Codec _codec = Codec.aacADTS;
  StreamSubscription? _recorderSubscription;
  AudioSession? session;

  @override
  RecorderState build() {
    ref.onDispose(_onDispose);
    return RecorderState();
  }

  Future<void> checkPermission() async {
    state = state.copyWith(permissionStatus: AsyncLoading());
    try {
      var permissionStatus = await Permission.microphone.request();
      print(permissionStatus);
      state = state.copyWith(permissionStatus: AsyncData(permissionStatus));
      if (permissionStatus.isGranted || permissionStatus.isLimited) {
        await init();
      }
    } catch (e, stackTrace) {
      state = state.copyWith(permissionStatus: AsyncError(e, stackTrace));
    }
  }

  Future<void> init() async {
    state = state.copyWith(recorderInitialize: AsyncLoading());
    try {
      await _openRecorder();
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

      state = state.copyWith(recorderInitialize: AsyncData(true));
    } catch (e, stackTrace) {
      state = state.copyWith(recorderInitialize: AsyncError(e, stackTrace));
    }
    // await startRecorder();
  }

  Future<void> _openRecorder() async {
    await _recorder.openRecorder();
    await _recorder.setSubscriptionDuration(const Duration(milliseconds: 10));
  }

  Future<void> startRecorder() async {
    await session?.setActive(true);
    state = state.copyWith(recordingInProgress: AsyncLoading());
    try {
      var path = '';
      var tempDir = await getTemporaryDirectory();
      path = '${tempDir.path}/${DateTime.now().day}_${DateTime.now().month}_${DateTime.now().year}_${DateTime.now().millisecond}${ext[_codec.index]}';
      await _recorder.startRecorder(
        toFile: path,
        codec: _codec,
        // sampleRate: 44100,
        // bitRate: 128000,
      );
      print('fileUrl@@1==>$path');
      state = state.copyWith(recordingInProgress: AsyncData(true));
      _recorderSubscription = _recorder.onProgress?.listen((position) async {
        if (position.duration.inMilliseconds.toDouble() <= 60000.0 && position.duration.inMilliseconds.toDouble() >= 0.0) {
          var date = DateTime.fromMillisecondsSinceEpoch(position.duration.inMilliseconds, isUtc: true);
          var txt = DateFormat('mm:ss').format(date);
          state = state.copyWith(recordingSliderDuration: position.duration.inMilliseconds.toDouble(), recordingTime: txt);
        } else {
          await stopRecorder();
        }
      });
    } catch (e, stackTrace) {
      state = state.copyWith(recordingInProgress: AsyncError(e, stackTrace));
    }
  }

  Future<void> stopRecorder() async {
    try {
      if (_recorder.isRecording) {
        String? fileUrl = await _recorder.stopRecorder();
        print('fileUrl@@2==>$fileUrl');
        if (fileUrl != null) {
          await session?.setActive(false);
          state = state.copyWith(recordingPath: fileUrl);
          await Future.delayed(Duration(milliseconds: 10));
          state = state.copyWith(
            recordingInProgress: AsyncData(false),
          );
        } else {
          throw Exception('Recording not found');
        }
      }
    } catch (e, stackTrace) {
      state = state.copyWith(recordingInProgress: AsyncError(e, stackTrace));
    }
  }

  Future<void> _cancelRecordSubscription() async {
    if (_recorderSubscription != null) {
      await _recorderSubscription?.cancel();
      _recorderSubscription = null;
    }
  }

  Future<void> _closeRecorder() async {
    await _recorder.closeRecorder();
  }

  void _onDispose() async {
    print('dispose called');
    await _cancelRecordSubscription();
    await _closeRecorder();
  }
}
