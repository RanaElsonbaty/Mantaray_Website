import 'package:flutter/material.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/video/mantaray_video.mp4', // Replace with your video file path
    );
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      _controller.setLooping(true); // Enable looping
      _controller.play(); // Start playing the video automatically
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return VideoPlayer(_controller);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
              child: Text("Welcome to the world of professionalism and innovation with MantaRay.\nOur dedicated team works tirelessly to guarantee client satisfaction and deliver optimal results in every operation.",
                style: TextStyle(color: AppColors.whiteColor,
                fontSize: 16,fontWeight: FontWeight.w600),)),
        )
      ],
    );
  }
}
