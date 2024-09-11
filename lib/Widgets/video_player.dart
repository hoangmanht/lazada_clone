import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/video_palyer_item.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  final List<String> videoUrls = [
    'lib/assets/videos/1.mp4',
    'lib/assets/videos/2.mp4',
    // Add more video URLs here
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return VideoPalyerItem(videoUrl: videoUrls[index]);
        });
  }
}
