import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazada_clone/utility/colors.dart';

class LikeScreen extends StatefulWidget {
  LikeScreen({super.key});

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 20, 20, 20),
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: TabBar(
                      dividerColor: const Color.fromARGB(0, 22, 22, 22),
                      controller: _tabController,
                      indicator: const BoxDecoration(),
                      labelPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
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
                    padding: EdgeInsets.all(
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
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  // following
                  Container(
                    color: const Color.fromARGB(255, 28, 28, 28),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          height: 170,
                          child: Image.asset(
                              'lib/assets/icons/like_character.png'),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Log in to experience now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'you can see all contents after log in ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 253, 112, 88),
                                Color.fromARGB(255, 248, 58, 127),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: MyColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // For you
                  Container(
                    color: const Color.fromARGB(255, 28, 28, 28),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
