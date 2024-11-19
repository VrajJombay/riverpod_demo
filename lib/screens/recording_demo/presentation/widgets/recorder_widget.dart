import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_demo/utils/app_lottie.dart';

import '../provider/recoder/recorder_provider.dart';

class RecorderWidget extends ConsumerStatefulWidget {
  const RecorderWidget({
    super.key,
    required this.recordingCompleted,
    required this.onCrossIconClicked,
  });

  final Function(String filePath) recordingCompleted;
  final Function() onCrossIconClicked;

  @override
  ConsumerState<RecorderWidget> createState() => _RecorderWidgetState();
}

class _RecorderWidgetState extends ConsumerState<RecorderWidget> with WidgetsBindingObserver, TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((callback) async {
      await ref.read(recorderProvider.notifier).checkPermission();
    });
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    _animationController?.stop();
  }

  bool afterOpenSettings = false;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      final permissionStatus = ref.read(recorderProvider).permissionStatus;
      print('permissionStatus==>$permissionStatus');
      if (permissionStatus.value == PermissionStatus.permanentlyDenied && afterOpenSettings) {
        await ref.read(recorderProvider.notifier).checkPermission();
        afterOpenSettings = false;
      }
    } else {
      ref.read(recorderProvider.notifier).stopRecorder();
    }
    if (state == AppLifecycleState.paused) {
      afterOpenSettings = true;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _animationController?.dispose();
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
          final permissionStatus = ref.watch(recorderProvider.select((value) => value.permissionStatus));
          return permissionStatus.when(data: (permissionStatus) {
            WidgetsBinding.instance.addPostFrameCallback((callback) async {
              if (permissionStatus.isDenied) {
                await ref.read(recorderProvider.notifier).checkPermission();
              }
            });
            return permissionStatus.isPermanentlyDenied
                ? _getPermissionWidget()
                : Stack(
                    children: [
                      Center(
                        child: Consumer(
                          builder: (context, ref, child) {
                            final recorderInitialize = ref.watch(recorderProvider.select((value) => value.recorderInitialize));
                            return recorderInitialize.when(data: (recorderInitialize) {
                              return recorderInitialize
                                  ? InkWell(
                                      onTap: () {
                                        ref.read(recorderProvider.notifier).startRecorder();
                                      },
                                      child: _getStartRecordingWidget(),
                                    )
                                  : Consumer(
                                      builder: (context, ref, child) {
                                        final recordingData = ref.watch(recorderProvider.select((value) => value.recordingData));
                                        return recordingData.when(
                                          data: (recordingData) {
                                            if (!recordingData) {
                                              final recordingPath = ref.watch(recorderProvider.select((value) => value.recordingPath));
                                              widget.recordingCompleted.call(recordingPath!);
                                              _animationController?.stop();
                                            } else {
                                              _animationController?.repeat();
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
                                                        _getStopButton(),
                                                        _getRecordingSlider(),
                                                        _getRecorderTimer(),
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
                                            return Center(
                                              child: CircularProgressIndicator(
                                                color: Colors.white,
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                            }, error: (error, _) {
                              return _getErrorWidget(error.toString());
                            }, loading: () {
                              return _getLoader();
                            });
                          },
                        ),
                      ),
                      _getCrossIcon(),
                    ],
                  );
          }, error: (error, _) {
            return _getErrorWidget(error.toString());
          }, loading: () {
            return _getLoader();
          });
        },
      ),
    );
  }

  Widget _getStartRecordingWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Tap to start recording',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(height: 5),
        Text(
          'Maximum limit: 1 minute',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        SizedBox(height: 15),
        CircleAvatar(
          radius: 10,
          backgroundColor: Colors.red,
        ),
      ],
    );
  }

  Widget _getCrossIcon() {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        onPressed: () {
          widget.onCrossIconClicked.call();
        },
        icon: Icon(
          Icons.cancel_outlined,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  Widget _getPermissionWidget() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your microphone access is blocked!',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 5),
          Text(
            'To grant permission, go to settings',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                openAppSettings();
              },
              child: Text('Settings')),
        ],
      ),
    );
  }

  Widget _getStopButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: InkWell(
        onTap: () {
          ref.read(recorderProvider.notifier).stopRecorder();
        },
        child: Container(
          height: 18,
          width: 18,
          color: Colors.red,
        ),
      ),
    );
  }

  Widget _getRecordingSlider() {
    return Consumer(
      builder: (context, ref, child) {
        final recordingSliderDuration = ref.watch(recorderProvider.select((value) => value.recordingSliderDuration));
        return Expanded(
          child: Slider(
            min: 0,
            max: 60000,
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            value: recordingSliderDuration,
            onChanged: (value) {},
          ),
        );
      },
    );
  }

  Widget _getRecorderTimer() {
    return Consumer(
      builder: (context, ref, child) {
        final recordingTime = ref.watch(recorderProvider.select((value) => value.recordingTime));
        return Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: SizedBox(
            width: 45,
            child: Center(
              child: Text(
                recordingTime,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _getErrorWidget(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            error.toString(),
            style: TextStyle(color: Colors.white),
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
