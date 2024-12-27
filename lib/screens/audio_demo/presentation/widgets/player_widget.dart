import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../../../utils/app_lottie.dart';
import '../provider/player/player_provider.dart';

class PlayerWidget extends ConsumerStatefulWidget {
  const PlayerWidget(
      {super.key,
      required this.fileUrl,
      required this.onDeleteIconClicked,
      required this.isNetworkUrl});

  final String fileUrl;
  final bool isNetworkUrl;
  final Function() onDeleteIconClicked;

  @override
  ConsumerState<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends ConsumerState<PlayerWidget>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((callback) async {
      await ref.read(playerProvider(widget.fileUrl).notifier).init();
    });
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    _animationController?.stop();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state != AppLifecycleState.resumed) {
      await ref.read(playerProvider(widget.fileUrl).notifier).pausePlayer();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Consumer(
        builder: (context, ref, child) {
          final playerData = ref.watch(playerProvider(widget.fileUrl)
              .select((value) => value.playerData));
          return playerData.when(
            data: (playerData) {
              if (playerData) {
                _animationController?.repeat();
              } else {
                _animationController?.stop();
              }
              return Stack(
                children: [
                  Center(
                    child: Lottie.asset(
                      AppLottie.lottieAudio,
                      controller: _animationController,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _getPlayPauseBtn(playerData),
                          _getPlayerSlider(),
                          _getPlayerTimer(),
                          _getDeleteIcon(),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            error: (error, _) {
              return _getErrorWidget(error.toString());
            },
            loading: () {
              return _getLoader();
            },
          );
        },
      ),
    );
  }

  Widget _getPlayPauseBtn(bool playerData) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: InkWell(
        onTap: () async {
          await ref
              .read(playerProvider(widget.fileUrl).notifier)
              .playAndPausePlayer();
        },
        child: playerData
            ? Icon(
                Icons.pause,
                color: Colors.white,
                size: 25,
              )
            : Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 25,
              ),
      ),
    );
  }

  Widget _getPlayerSlider() {
    return Consumer(
      builder: (context, ref, child) {
        final playerSliderDuration = ref.watch(playerProvider(widget.fileUrl)
            .select((value) => value.playerSliderDuration));
        final maxDuration =
            ref.read(playerProvider(widget.fileUrl)).maxDuration;
        return Expanded(
          child: Slider(
            min: 0,
            max: maxDuration,
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            value: min(playerSliderDuration, maxDuration),
            onChanged: (value) {
              ref.read(playerProvider(widget.fileUrl).notifier).seekTo(value);
            },
          ),
        );
      },
    );
  }

  Widget _getPlayerTimer() {
    return Consumer(
      builder: (context, ref, child) {
        final playerTime = ref.watch(
            playerProvider(widget.fileUrl).select((value) => value.playerTime));
        return Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: SizedBox(
            width: 45,
            child: Center(
              child: Text(
                playerTime,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _getDeleteIcon() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: InkWell(
        onTap: () async {
          await ref.read(playerProvider(widget.fileUrl).notifier).pausePlayer();
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  'Are you sure?',
                  style: TextStyle(fontSize: 18),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      widget.onDeleteIconClicked.call();
                    },
                    child: Text('YES, I AM SURE'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('CANCEL'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(
          Icons.delete_outline,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }

  Widget _getErrorWidget(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            error.toString(),
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              await ref.read(playerProvider(widget.fileUrl).notifier).init();
            },
            child: Text(
              'Retry',
            ),
          ),
        ],
      ),
    );
  }

  Widget _getLoader() {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }
}
