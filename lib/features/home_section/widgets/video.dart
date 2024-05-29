import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  const Video({super.key,});
  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {

  late FlickManager flickManager;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // from network

    flickManager= FlickManager(
        videoPlayerController:VideoPlayerController.networkUrl(
            Uri.parse(
                "https://firebasestorage.googleapis.com/v0/b/website-a5924.appspot.com/o/video_mataray.mp4?alt=media&token=89e75d5c-fad4-40b7-b5f8-0f98141acfe4")) );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    flickManager.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
          aspectRatio: 16/90,
          child: FlickVideoPlayer(
            flickManager: flickManager,));

  }
}
