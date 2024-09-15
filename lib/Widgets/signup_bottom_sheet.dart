import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/colors.dart';

class SignupBottomSheet extends StatefulWidget {
  const SignupBottomSheet({super.key});

  @override
  State<SignupBottomSheet> createState() => _SignupBottomSheetState();
}

class _SignupBottomSheetState extends State<SignupBottomSheet> {
  // Zalo and SMS
  bool isSMS = false;
  bool isZalo = false;

  @override
  Widget build(BuildContext context) {
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

                // clsoe btn
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

            // padding
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

            //SMS & Zalo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SMS
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSMS = true;
                      isZalo = false;
                    });
                  },
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'SMS',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color:
                                isSMS ? MyColors.hotPink : Colors.grey.shade500,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        isSMS
                            ? Container(
                                height: 3,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: MyColors.hotPink,
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),

                // zalo
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSMS = false;
                      isZalo = true;
                    });
                  },
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Zalo',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: isZalo
                                ? MyColors.hotPink
                                : Colors.grey.shade500,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        isZalo
                            ? Container(
                                height: 3,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: MyColors.hotPink,
                                ),
                              )
                            : const SizedBox()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            // user input
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Enter your username',
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(
                          left: 75,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 17,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 25,
                              height: 15,
                              child:
                                  Image.asset('lib/assets/icons/flags/vn.png'),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              '+84',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            // confirm btn
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Container(
                  width: double.infinity,
                  height: 50,
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
                      isSMS ? 'Send code via SMS' : 'Send code via Zalo',
                      style: TextStyle(
                        color: MyColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //padding
            const SizedBox(
              height: 10,
            ),

            // -------or--------
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            // fb and gg signin btn
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 43,
                  child: Image.asset('lib/assets/icons/facebook.png'),
                ),
                const SizedBox(
                  width: 55,
                ),
                SizedBox(
                  height: 40,
                  child: Image.asset('lib/assets/icons/google.png'),
                ),
              ],
            ),

            const Spacer(),

            // Already have account?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "sign in now",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 106, 255),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.shade300,
              indent: 20,
              endIndent: 20,
              height: 10,
            ),
            const SizedBox(
              height: 15,
            ),

            // privacy and sercurity
            RichText(
              maxLines: 2,
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'By signing up, you agree with our',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: ' privacy and sercurity',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 106, 255),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
