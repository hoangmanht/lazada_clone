import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_touch_ripple/flutter_touch_ripple.dart';
import 'package:lazada_clone/Widgets/screens/privacy_screen.dart';
import 'package:lazada_clone/utility/colors.dart';

class PolicyScreen extends StatefulWidget {
  PolicyScreen({super.key});

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  int _currentIndex = 0;

  // tabs
  List<String> tabs = [
    'Privacy Policy',
    'Term & Condition',
  ];

  // indicator animation method
  double changeIndicatorPos() {
    switch (_currentIndex) {
      case 0:
        return 0;
      case 1:
        return MediaQuery.of(context).size.width / 2;
      default:
        return 0;
    }
  }

  // tabbar view
  Widget changeTabbarView() {
    switch (_currentIndex) {
      case 0:
        return const PrivacyScreen();
      case 1:
        return Container(
          color: MyColors.white,
        );
      default:
        return const PrivacyScreen();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      // app bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 20,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text(
          'Policies',
        ),
      ), // app bar

      body: Column(
        children: [
          Stack(
            children: [
              // tabbar
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 20, 53, 67),
                      Color.fromARGB(255, 28, 153, 180),
                    ],
                  ),
                ),
                height: 55,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: tabs.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width / tabs.length,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              tabs[index],
                              style: TextStyle(
                                color: _currentIndex == index
                                    ? MyColors.white
                                    : MyColors.white.withOpacity(0.4),
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ), // tabbar

              // indicator
              Positioned(
                bottom: 0,
                child: AnimatedPositioned(
                  bottom: 0,
                  duration: const Duration(milliseconds: 100),
                  child: AnimatedContainer(
                    margin: EdgeInsets.only(left: changeIndicatorPos()),
                    duration: const Duration(milliseconds: 100),
                    width: MediaQuery.of(context).size.width / tabs.length,
                    height: 4,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 113, 34),
                    ),
                  ),
                ),
              ), // indicator
            ],
          ),

          //tabbar view
          changeTabbarView(),
        ],
      ),
    );
  }
}
