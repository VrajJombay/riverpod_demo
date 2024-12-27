import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'provider/audio_player/audio_player_provider.dart';
import 'widgets/player_widget.dart';
import 'widgets/recorder_widget.dart';

class AudioPlayerScreen extends StatelessWidget {
  const AudioPlayerScreen(
      {super.key, this.isNetworkUrl = false, this.networkFileUrl});

  final bool isNetworkUrl;
  final String? networkFileUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final canRecordOrPlay = ref.watch(
                audioPlayerProvider.select((value) => value.canRecordOrPlay));
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: canRecordOrPlay
                  ? isNetworkUrl
                      ? PlayerWidget(
                          isNetworkUrl: isNetworkUrl,
                          fileUrl: networkFileUrl!,
                          onDeleteIconClicked: () {
                            ref
                                .read(audioPlayerProvider.notifier)
                                .canRecordOrPlay(false);
                          },
                        )
                      : Consumer(
                          builder: (context, ref, child) {
                            String? localFileUrl = ref.watch(audioPlayerProvider
                                .select((value) => value.filePath));
                            print('localFileUrl--->$localFileUrl');
                            return ((localFileUrl?.isNotEmpty ?? false) &&
                                    localFileUrl != null)
                                ? PlayerWidget(
                                    isNetworkUrl: isNetworkUrl,
                                    fileUrl: localFileUrl,
                                    onDeleteIconClicked: () {
                                      ref
                                          .read(audioPlayerProvider.notifier)
                                          .canRecordOrPlay(false);
                                    },
                                  )
                                : RecorderWidget(
                                    recordingCompleted: (fileUrl) {
                                      WidgetsBinding.instance
                                          .addPostFrameCallback((callback) {
                                        ref
                                            .read(audioPlayerProvider.notifier)
                                            .recordingCompleted(fileUrl);
                                      });
                                    },
                                    onCrossIconClicked: () {
                                      ref
                                          .read(audioPlayerProvider.notifier)
                                          .canRecordOrPlay(false);
                                    },
                                  );
                          },
                        )
                  : InkWell(
                      onTap: () {
                        ref
                            .read(audioPlayerProvider.notifier)
                            .canRecordOrPlay(true);
                      },
                      child: _recordAnAudioWidget(),
                    ),
            );
          },
        ),
      ),
    );
  }

  Widget _recordAnAudioWidget() {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.mic,
            size: 40,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            'Record an audio',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
