import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPalyerItem extends StatefulWidget {
  final String videoUrl;
  const VideoPalyerItem({super.key, required this.videoUrl});

  @override
  State<VideoPalyerItem> createState() => _VideoPalyerItemState();
}

class _VideoPalyerItemState extends State<VideoPalyerItem> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
        _controller.play(); // Auto-play the video when initialized
        _controller.setLooping(true); // Loop the video
      });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller to release resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _controller.value.isInitialized
            ? GestureDetector(
                onTap: () {
                  // Play or pause on tap
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
                child: SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: _controller.value.size.width,
                      height: _controller.value.size.height,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                ),
              )
            : const Center(
                child:
                    CircularProgressIndicator()), // Loading indicator while the video is being initialized
        // Add more UI elements on top of the video, like captions or action buttons.
      ],
    );
  }
}
