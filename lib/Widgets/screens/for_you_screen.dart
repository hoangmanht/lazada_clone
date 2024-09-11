import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/video_player.dart';

class ForYouScreen extends StatefulWidget {
  const ForYouScreen({super.key});

  @override
  State<ForYouScreen> createState() => _ForYouScreenState();
}

class _ForYouScreenState extends State<ForYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 28, 28, 28),
          child: const VideoPlayer(),
        ),

        //menu item
        Positioned(
          right: 13,
          bottom: 20,
          child: Column(
            children: [
              // like icon
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    child: Image.asset('lib/assets/icons/like_screen/clap.png'),
                  ),
                  const Text(
                    '263',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),

              // comment icon
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    child:
                        Image.asset('lib/assets/icons/like_screen/comment.png'),
                  ),
                  const Text(
                    '263',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),

              //share icon
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    child:
                        Image.asset('lib/assets/icons/like_screen/share.png'),
                  ),
                  const Text(
                    '263',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),

              // find icon
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    child: Image.asset('lib/assets/icons/like_screen/find.png'),
                  ),
                  const Text(
                    '263',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),

                  const SizedBox(
                    height: 18,
                  ),

                  //more
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset('lib/assets/icons/like_screen/more.png'),
                  ),

                  const SizedBox(
                    height: 18,
                  ),

                  //more
                  SizedBox(
                    height: 30,
                    width: 35,
                    child:
                        Image.asset('lib/assets/icons/like_screen/sound.png'),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
