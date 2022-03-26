import 'package:flutter/material.dart';
import 'package:res_qr_flutter/Models/catogryModel.dart';
import 'package:res_qr_flutter/bottomNav/cat/video/videoBasic.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  int index;
  List<CatogryModel> data;
  // final VideoPlayerController controller;
  VideoPlayerWidget({
    Key? key,
    required this.index,
    required this.data,
  }) : super(key: key);

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  VideoPlayerController? controller;
  @override
  void initState() {
    controller = VideoPlayerController.asset(widget.data[widget.index].video.toString(),)
    ..addListener(() {setState(() {});})
    ..setLooping(false)..initialize().then((value) => controller!.play());
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return
    controller != null && controller!.value.isInitialized
    ? Container(alignment: Alignment.center,
    child: buildVideo(),) 
    :Container(
      height: 200,
      child: Center(child: CircularProgressIndicator(),),
    );

  }

  Widget buildVideo() => Stack(
    children: [
      buildVideoPlayer(),
      Positioned.fill(child: BasicOverlayWidget(controller: controller!)),
    ],
    );

  Widget buildVideoPlayer() => AspectRatio(
    aspectRatio: controller!.value.aspectRatio,
    child: VideoPlayer(controller!));
}
