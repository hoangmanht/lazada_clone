import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/colors.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // login section
              Container(
                height: 155,
                width: double.infinity,
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/assets/images/login_bg.png')),
                ),
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Sign in, Chance to get a deal!',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: [
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
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: MyColors.hotPink, width: 1),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                        color: MyColors.hotPink,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [Container()],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Positioned(
                      right: 13,
                      child: Icon(
                        Icons.hexagon_outlined,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),

              // title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My orders',
                      style: TextStyle(
                        color: MyColors.headline,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'View all orders',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey.shade600,
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              // menu item
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image.asset(
                              'lib/assets/icons/account_screen_icons/pending_payment.png'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Pending\npayment',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image.asset(
                              'lib/assets/icons/account_screen_icons/Awaiting_shipment.png'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Awaiting\nshipment',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image.asset(
                              "lib/assets/icons/account_screen_icons/on_it's way.png"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "On\nit's way",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image.asset(
                              "lib/assets/icons/account_screen_icons/pending_review.png"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Pending\nreview",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image.asset(
                              "lib/assets/icons/account_screen_icons/return_cancel.png"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Return\ncancel",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              // banner
              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.all(12),
                child: SizedBox(
                  child: Image.asset(
                      'lib/assets/icons/account_screen_icons/pro_banner.png'),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Play a game, win prizes!',
                      style: TextStyle(
                        color: MyColors.headline,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Quest',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey.shade600,
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 180,
                          height: 117,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'lib/assets/icons/account_screen_icons/xu.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 5,
                          bottom: 10,
                          child: Container(
                            height: 28,
                            width: 90,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 253, 112, 88),
                                  Color.fromARGB(255, 248, 58, 127),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Use Xu',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 180,
                          height: 117,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'lib/assets/icons/account_screen_icons/plaint tree.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 5,
                          bottom: 10,
                          child: Container(
                            height: 28,
                            width: 90,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 253, 112, 88),
                                  Color.fromARGB(255, 248, 58, 127),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Play',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
