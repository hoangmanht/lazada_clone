import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:lazada_clone/utility/colors.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

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
          'Account info',
        ),
      ), // app bar

      // list item
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: ListView(
          children: [
            // name
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Name',
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      children: [
                        Text(
                          FirebaseAuth.instance.currentUser!.displayName ?? '',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.grey.shade500,
                        ),
                      ],
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ), // name

            // lazadaId
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Lazada ID',
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.copy,
                          size: 15,
                          color: Colors.grey.shade500,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '9999545369125',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ), // lazadaId

            // change password
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Change Password',
                      style: TextStyle(fontSize: 17),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ), // change password

            // use touch ID
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Use Touch ID',
                      style: TextStyle(fontSize: 17),
                    ),
                    AdvancedSwitch(
                      activeColor: MyColors.blue,
                      onChanged: (value) {},
                      height: 28,
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ), // use touch ID

            // quick login
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Quick Login',
                      style: TextStyle(fontSize: 17),
                    ),
                    AdvancedSwitch(
                      activeColor: MyColors.blue,
                      onChanged: (value) {},
                      height: 28,
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ), // quick login

            // padding
            const SizedBox(
              height: 10,
            ),

            // PIN
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'PIN',
                      style: TextStyle(fontSize: 17),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),

            // Phone number
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      children: [
                        Text(
                          'Add phone number',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.grey.shade500,
                        ),
                      ],
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),

            // email
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Change Email',
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      children: [
                        Text(
                          overflow: TextOverflow.ellipsis,
                          FirebaseAuth.instance.currentUser!.email!.length > 15
                              ? FirebaseAuth.instance.currentUser!.email!
                                      .substring(0, 15) +
                                  '...'
                              : FirebaseAuth.instance.currentUser!.email!,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.grey.shade500,
                        ),
                      ],
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),

            // gender
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Gender',
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      children: [
                        Text(
                          'Add gender',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.grey.shade500,
                        ),
                      ],
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),

            // birth day
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Birth day',
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      children: [
                        Text(
                          'Add birth day',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.grey.shade500,
                        ),
                      ],
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),

            // padding
            const SizedBox(
              height: 10,
            ),

            // bank acount
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Bank account',
                      style: TextStyle(fontSize: 17),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),

            // social account
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Social account',
                      style: TextStyle(fontSize: 17),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
