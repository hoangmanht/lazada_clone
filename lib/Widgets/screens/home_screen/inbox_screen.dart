import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lazada_clone/providers/navigation_notifier.dart';
import 'package:lazada_clone/utility/colors.dart';

class InboxScreen extends ConsumerStatefulWidget {
  const InboxScreen({super.key});

  @override
  ConsumerState<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends ConsumerState<InboxScreen> {
  void _showLoginBottomSheet(BuildContext context) {
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
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.grey.shade600,
                          ),
                          onPressed: () => Navigator.of(context).pop(),
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
                        onPressed: () {
                          // Simulate login success
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
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showLoginBottomSheet(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final navigationProvider = ref.read(navigationNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  //App bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Message',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: MyColors.headline,
                        ),
                      ),
                      SizedBox(
                        width: 22,
                        child: Image.asset(
                            'lib/assets/icons/account_screen_icons/brush.png'),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 13,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 178,
                        height: 60,
                        child: Image.asset(
                          'lib/assets/icons/orders.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 178,
                        height: 60,
                        child: Image.asset(
                          'lib/assets/icons/chat.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 178,
                        height: 60,
                        child: Image.asset(
                          'lib/assets/icons/noti.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 178,
                        height: 60,
                        child: Image.asset(
                          'lib/assets/icons/promotion.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 25),
                      height: 190,
                      child: Image.asset(
                        'lib/assets/icons/character.png',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'No Message Yet',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Please try again'),

                    const SizedBox(
                      height: 10,
                    ),

                    // continue button
                    GestureDetector(
                      onTap: () {
                        navigationProvider.updateCurrentIndex(0);
                      },
                      child: Container(
                        width: 180,
                        height: 35,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 253, 112, 88),
                              Color.fromARGB(255, 248, 58, 127),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Continue Shopping',
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
        ),
      ),
    );
  }
}
