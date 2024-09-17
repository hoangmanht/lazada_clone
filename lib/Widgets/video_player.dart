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
    'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/videos%2F1.mp4?alt=media&token=38d30407-895a-4b90-9b56-1a22aa698227',
    'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/videos%2F2.mp4?alt=media&token=4e0053ed-6fd7-4bf3-a616-e712383fa74f',
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
