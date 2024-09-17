import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/colors.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 193, 218, 255),
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
          'Feedback',
        ),
      ), // app bar

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 1.0],
            colors: [
              const Color.fromARGB(255, 193, 219, 255),
              MyColors.white,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello ${FirebaseAuth.instance.currentUser!.displayName}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'How can i help you?',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                height: 320,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CLEO takes care of customer service,\nincluding:',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 35,
                          child: Image.asset('lib/assets/feedback/1.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Order, payment, delivery issues',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 35,
                          child: Image.asset('lib/assets/feedback/2.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Unauthorized transaction,\nfraud, scam',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 35,
                          child: Image.asset('lib/assets/feedback/3.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Customer service agent',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ask for help btn
                    Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          stops: [0.05, 1.0],
                          colors: [
                            Color.fromARGB(255, 255, 144, 65),
                            Color.fromARGB(255, 248, 58, 127),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Ask For Help',
                          style: TextStyle(
                            color: MyColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ), // ask for help btn
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 20,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Other feedback',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // page error btn
                        Container(
                          height: 60,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 246, 249, 255),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                height: 28,
                                child: Image.asset(
                                    'lib/assets/feedback/error.png'),
                              ),
                              const Expanded(
                                child: Text(
                                  'Page Error',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                            ],
                          ),
                        ), // page error btn

                        // suggestions btn
                        Container(
                          height: 60,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 246, 249, 255),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                height: 28,
                                child: Image.asset(
                                    'lib/assets/feedback/suggestion.png'),
                              ),
                              const Expanded(
                                child: Text(
                                  'Suggestions',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                            ],
                          ),
                        ), // suggestions btn
                      ],
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
