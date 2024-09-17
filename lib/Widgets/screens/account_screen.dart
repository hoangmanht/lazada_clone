import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/screens/setting_screen.dart';
import 'package:lazada_clone/Widgets/signup_bottom_sheet.dart';
import 'package:lazada_clone/utility/account_item_list.dart';
import 'package:lazada_clone/utility/colors.dart';
import 'package:lazada_clone/utility/firebase_utility.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  // scroll controller
  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();
  double _scrollPosition = -1;
  double _scrollPosition2 = -1;
  double _scrollPosition3 = -1;
  double normalizedScrollPosition = 0;
  double normalizedScrollPosition2 = 0;
  double normalizedScrollPosition3 = 0;

  User? _user;

  // show login
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
          child: SizedBox(
            height: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    // promotion banner
                    SizedBox(
                      child: Image.asset('lib/assets/icons/voucher_60.png'),
                    ),

                    Positioned(
                      top: 50,
                      left: 5,
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.grey.shade600,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              Navigator.of(context).pop();
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                // decoration text
                const SizedBox(
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
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
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // GG button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Stack(
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
                            setState(() {
                              _user = FirebaseAuth.instance.currentUser;
                            });
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
                ),

                const SizedBox(height: 15),

                // Fb button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Stack(
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
                        bottom: 15,
                        child: SizedBox(
                          child: Image.asset(
                            'lib/assets/icons/facebook.png',
                            width: 23,
                          ),
                        ),
                      ),
                    ],
                  ),
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

  // show signin
  void _showSignupBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: MyColors.white,
      isDismissible: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return const SignupBottomSheet();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        // caculate scroll position
        if (_scrollController.hasClients) {
          normalizedScrollPosition = _scrollController.offset /
              _scrollController.position.maxScrollExtent;

          _scrollPosition = (2 * normalizedScrollPosition - 1);
        } else {
          setState(() {
            _scrollPosition = -1;
          });
        }
      });
    });
    _scrollController2.addListener(() {
      setState(() {
        // caculate scroll position
        if (_scrollController2.hasClients) {
          normalizedScrollPosition2 = _scrollController2.offset /
              (MediaQuery.sizeOf(context).width / 2);

          _scrollPosition2 = (2 * normalizedScrollPosition2 - 1);
        } else {
          setState(() {
            _scrollPosition2 = -1;
          });
        }
      });
    });

    _scrollController3.addListener(() {
      setState(() {
        // caculate scroll position
        if (_scrollController3.hasClients) {
          normalizedScrollPosition3 = _scrollController3.offset /
              (MediaQuery.sizeOf(context).width * 0.6);

          _scrollPosition3 = (2 * normalizedScrollPosition3 - 1);
        } else {
          setState(() {
            _scrollPosition3 = -1;
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // login section
              StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color.fromARGB(255, 255, 238, 228),
                            MyColors.white,
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 30,
                        bottom: 30,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            children: [
                              // avatar
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(FirebaseAuth
                                        .instance.currentUser!.photoURL ??
                                    ''),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Icon(
                                  CupertinoIcons.camera_circle_fill,
                                  color: MyColors.white,
                                  size: 24,
                                ),
                              ), // avatar
                            ],
                          ),

                          const SizedBox(
                            width: 15,
                          ),

                          // user's info
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FirebaseAuth
                                        .instance.currentUser!.displayName ??
                                    '',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: '0',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(
                                      text: ' Favorite',
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: '  0',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(
                                      text: ' Following',
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: '  0',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(
                                      text: ' Promote code',
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ), // user's info

                          Material(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const SettingScreen(),
                                  ),
                                );
                              },
                              child: SizedBox(
                                width: 20,
                                child:
                                    Image.asset('lib/assets/icons/setting.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      height: 155,
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/account_icons%2Flogin_bg.png?alt=media&token=91461de4-cbfe-4193-b3e8-484a0c1301b5'),
                        ),
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
                                      // sign in btn
                                      GestureDetector(
                                        onTap: () {
                                          _showLoginBottomSheet(context);
                                        },
                                        child: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color.fromARGB(
                                                    255, 253, 112, 88),
                                                Color.fromARGB(
                                                    255, 248, 58, 127),
                                              ],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                      ),

                                      const SizedBox(
                                        width: 20,
                                      ),

                                      // sign up btn
                                      GestureDetector(
                                        onTap: () {
                                          _showSignupBottomSheet(context);
                                        },
                                        child: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.transparent,
                                            border: Border.all(
                                                color: MyColors.hotPink,
                                                width: 1),
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
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [Container()],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // title
                    Text(
                      'My orders',
                      style: TextStyle(
                        color: MyColors.headline,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ), // title

                    // view all order
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
                    ), // view all order
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
                  SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/account_icons%2Fpending_payment.png?alt=media&token=84d69cf2-ef90-4e0e-a306-f887535fc9c7'),
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
                  SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/account_icons%2FAwaiting_shipment.png?alt=media&token=11d99d0a-1201-4fab-9891-0f25f7d40657'),
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
                  SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/account_icons%2FAwaiting_shipment.png?alt=media&token=11d99d0a-1201-4fab-9891-0f25f7d40657"),
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
                  SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/account_icons%2Fpending_review.png?alt=media&token=48ac4675-bbac-4078-889f-88cdea904cf0"),
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
                  SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/account_icons%2Freturn_cancel.png?alt=media&token=85672c4a-4034-4e20-8449-f9fe9e92fecd"),
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
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/account_icons%2Fpro_banner.png?alt=media&token=32f25735-c0b7-4815-873a-7f7b72cda950'),
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
                              image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/account_icons%2Fxu.png?alt=media&token=51b17249-406b-48bd-b082-8acabf80e8ef',
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
                              image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/account_icons%2Fplaint%20tree.png?alt=media&token=f7ce5535-a27d-4f6d-8baa-9210fe7c89e6',
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
              ),

              // item list
              SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        itemCount: AccountItemList.accountItemList1.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: AccountItemList
                                      .accountItemList1[index].image,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 75,
                                  child: Text(
                                    AccountItemList
                                        .accountItemList1[index].title,
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        height: 1.2,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    // custom indicator
                    Padding(
                      padding: const EdgeInsets.only(left: 178, right: 178),
                      child: Container(
                        height: 4,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(2.5)),
                        child: Align(
                          alignment: Alignment(_scrollPosition, 0.0),
                          child: Container(
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.5),
                              color: MyColors.hotPink,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 5,
              ),

              Divider(
                color: Colors.grey.shade100,
                thickness: 10,
              ),

              // item list 2
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                height: 220,
                child: Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        controller: _scrollController2,
                        scrollDirection: Axis.horizontal,
                        itemCount: AccountItemList.accountItemList2.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: AccountItemList
                                      .accountItemList2[index].image,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 75,
                                  child: Text(
                                    AccountItemList
                                        .accountItemList2[index].title,
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        height: 1.2,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    // custom indicator
                    Padding(
                      padding: const EdgeInsets.only(left: 178, right: 178),
                      child: Container(
                        height: 4,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(2.5)),
                        child: Align(
                          alignment: Alignment(_scrollPosition2, 0.0),
                          child: Container(
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.5),
                              color: MyColors.hotPink,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Divider(
                      color: Colors.grey.shade100,
                      thickness: 10,
                    ),
                  ],
                ),
              ),

              // title 3
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent view',
                      style: TextStyle(
                        color: MyColors.headline,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Login to see',
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

              Divider(
                color: Colors.grey.shade100,
                thickness: 10,
              ),

              // item list 3
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                height: 200,
                child: Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        controller: _scrollController3,
                        scrollDirection: Axis.horizontal,
                        itemCount: AccountItemList.accountItemList3.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: AccountItemList
                                      .accountItemList3[index].image,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 75,
                                  child: Text(
                                    AccountItemList
                                        .accountItemList3[index].title,
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        height: 1.2,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    // custom indicator
                    Padding(
                      padding: const EdgeInsets.only(left: 178, right: 178),
                      child: Container(
                        height: 4,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(2.5)),
                        child: Align(
                          alignment: Alignment(_scrollPosition3, 0.0),
                          child: Container(
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.5),
                              color: MyColors.hotPink,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
