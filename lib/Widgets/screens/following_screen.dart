import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lazada_clone/providers/navigation_notifier.dart';
import 'package:lazada_clone/utility/colors.dart';
import 'package:lazada_clone/utility/firebase_utility.dart';

class FollowingScreen extends ConsumerStatefulWidget {
  TabController tabController;
  FollowingScreen({super.key, required this.tabController});

  @override
  ConsumerState<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends ConsumerState<FollowingScreen> {
  //user login state
  bool isUSerLogin = false;

  // show login
  void showLoginBottomSheet(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: MyColors.white,
      isDismissible: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            height: MediaQuery.of(context).size.height * 0.7,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Free 30-day return',
                          style: TextStyle(
                            color: Color.fromARGB(255, 221, 170, 120),
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),

                      // clsoe btn
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.grey.shade600,
                          ),
                          onPressed: () {
                            setState(
                              () {
                                Navigator.of(context).pop();
                                ref
                                    .read(navigationNotifierProvider.notifier)
                                    .updateCurrentIndex(0);
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                const Text(
                  "Log in and enjoy the perks!",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                // GG button
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          shadowColor: WidgetStateProperty.all<Color>(
                              Colors.transparent),
                          backgroundColor: WidgetStateProperty.all<Color>(
                            Colors.grey.shade100,
                          ),
                        ),
                        onPressed: () async {
                          await FirebaseUtility().signinWithGoogle();
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Login with Google',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: SizedBox(
                        child: Image.asset(
                          'lib/assets/icons/google.png',
                          width: 20,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // Fb button
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          shadowColor: WidgetStateProperty.all<Color>(
                              Colors.transparent),
                          backgroundColor: WidgetStateProperty.all<Color>(
                            Colors.grey.shade100,
                          ),
                        ),
                        onPressed: () {
                          // Simulate login success
                        },
                        child: Center(
                          child: Text(
                            'Login with Facebook',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: SizedBox(
                        child: Image.asset(
                          'lib/assets/icons/facebook.png',
                          width: 23,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        shadowColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                      onPressed: () {},
                      label: const Text(
                        'With password',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 106, 255),
                        ),
                      ),
                      icon: const Icon(
                        Icons.find_in_page,
                        color: Color.fromARGB(255, 0, 106, 255),
                        size: 22,
                      ),
                    ),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        shadowColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                      onPressed: () {},
                      label: const Text(
                        'Phone number',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 106, 255),
                        ),
                      ),
                      icon: const Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 0, 106, 255),
                        size: 20,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign up now",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 106, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(255, 28, 28, 28),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    color: const Color.fromARGB(255, 20, 20, 20),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),

                // login section
                Center(
                  child: Container(
                    color: const Color.fromARGB(255, 28, 28, 28),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 170,
                          child: Image.asset(
                              'lib/assets/icons/like_character.png'),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          snapshot.hasData
                              ? 'Enjoy a wide variety of content'
                              : 'Log in to experience now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          snapshot.hasData
                              ? "go to the section'For you' and start to follow\nyour favorite channels"
                              : 'you can see all contents after log in ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (snapshot.hasData) {
                              widget.tabController.index = 1;
                            }
                          },
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.symmetric(
                              horizontal: 25,
                            ),
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
                              widthFactor: 1,
                              child: Text(
                                snapshot.hasData ? 'Explore now' : 'Login',
                                style: TextStyle(
                                  color: MyColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
        });
  }
}
