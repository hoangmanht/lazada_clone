import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazada_clone/Widgets/screens/following_screen.dart';
import 'package:lazada_clone/Widgets/screens/for_you_screen.dart';
import 'package:lazada_clone/Widgets/video_player.dart';
import 'package:lazada_clone/providers/navigation_notifier.dart';
import 'package:lazada_clone/utility/colors.dart';
import 'package:lazada_clone/utility/firebase_utility.dart';

class LikeScreen extends ConsumerStatefulWidget {
  LikeScreen({super.key});

  @override
  ConsumerState<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends ConsumerState<LikeScreen>
    with TickerProviderStateMixin {
  User? _user;

  late TabController _tabController;

  bool isDisplayMenu = false;

  Widget menuwidget = Positioned(
    right: 13,
    bottom: 20,
    child: Column(
      children: [
        // like icon
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 32,
              child: Image.asset('lib/assets/icons/like_screen/clap.png'),
            ),
            Text(
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
              height: 32,
              child: Image.asset('lib/assets/icons/like_screen/comment.png'),
            ),
            Text(
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
              height: 32,
              child: Image.asset('lib/assets/icons/like_screen/share.png'),
            ),
            Text(
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
              height: 32,
              child: Image.asset('lib/assets/icons/like_screen/find.png'),
            ),
            Text(
              '263',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),

            const SizedBox(
              height: 18,
            ),

            //more
            SizedBox(
              height: 32,
              width: 30,
              child: Image.asset('lib/assets/icons/like_screen/more.png'),
            ),

            const SizedBox(
              height: 18,
            ),

            //more
            SizedBox(
              height: 32,
              width: 35,
              child: Image.asset('lib/assets/icons/like_screen/sound.png'),
            ),
          ],
        ),
      ],
    ),
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 2, vsync: this, animationDuration: Duration(seconds: 0));

    setState(() {
      if (_tabController.index == 1 ||
          FirebaseAuth.instance.currentUser != null) {
      } else {}
    });

    _tabController.addListener(() {
      setState(() {
        if (_tabController.index == 1 ||
            FirebaseAuth.instance.currentUser != null) {
        } else {}
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // tabbar
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      body: SafeArea(
        child: Stack(
          children: [
            // tab bar view
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  // following
                  FollowingScreen(
                    tabController: _tabController,
                  ),

                  // For you
                  ForYouScreen(),
                ],
              ),
            ),

            // tabbar
            Row(
              children: [
                Expanded(
                  child: TabBar(
                    dividerColor: const Color.fromARGB(0, 22, 22, 22),
                    isScrollable: true,
                    controller: _tabController,
                    indicator: const BoxDecoration(),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelPadding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    padding: EdgeInsets.zero,
                    indicatorPadding: EdgeInsets.zero,
                    unselectedLabelStyle: const TextStyle(
                      color: Color.fromARGB(255, 97, 96, 96),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    labelStyle: TextStyle(
                      color: MyColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    tabs: const [
                      Tab(
                        text: 'Following',
                      ),
                      Tab(
                        text: 'For you',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(
                    20,
                  ),
                  child: SvgPicture.asset(
                    'lib/assets/icons/account.svg',
                    color: MyColors.white,
                    height: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
