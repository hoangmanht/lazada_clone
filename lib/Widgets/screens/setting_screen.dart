import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/screens/account_info_screen.dart';
import 'package:lazada_clone/Widgets/screens/account_sercurity.dart';
import 'package:lazada_clone/Widgets/screens/address_screen.dart';
import 'package:lazada_clone/Widgets/screens/change_country_screen.dart';
import 'package:lazada_clone/Widgets/screens/chose_language_dialog.dart';
import 'package:lazada_clone/Widgets/screens/contact_us_screen.dart';
import 'package:lazada_clone/Widgets/screens/message_screen.dart';
import 'package:lazada_clone/Widgets/screens/policy_screen.dart';
import 'package:lazada_clone/utility/colors.dart';
import 'package:lazada_clone/utility/firebase_utility.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  // language groupValue
  int? LanguageGroupValue;

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
          fontSize: 23,
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
          'Settings',
        ),
      ),

      // list item
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: Material(
                color: MyColors.white,
                child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: 25,
                  ),
                  dense: true,
                  title: const Text(
                    'Account Info',
                    style: TextStyle(fontSize: 19),
                  ),
                  onTap: () {
                    Future.delayed(
                        const Duration(
                          milliseconds: 180,
                        ), () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AccountInfoScreen(),
                        ),
                      );
                    });
                  },
                ),
              ),
            ),

            // Address
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: Material(
                color: MyColors.white,
                child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: 25,
                  ),
                  dense: true,
                  title: const Text(
                    'Address',
                    style: TextStyle(fontSize: 19),
                  ),
                  onTap: () {
                    Future.delayed(
                      const Duration(
                        milliseconds: 180,
                      ),
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const AddressScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ), // Address

            //Messages
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: Material(
                color: MyColors.white,
                child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: 25,
                  ),
                  dense: true,
                  subtitle: Text(
                    'Send me nofications about special offer',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  title: const Text(
                    'Messages',
                    style: TextStyle(fontSize: 19),
                  ),
                  onTap: () {
                    Future.delayed(
                      const Duration(
                        milliseconds: 180,
                      ),
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MessageScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ), //Messages

            // country
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: Material(
                color: MyColors.white,
                child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: 25,
                  ),
                  dense: true,
                  leading: SizedBox(
                    width: 40,
                    height: 25,
                    child: Image.asset('lib/assets/icons/flags/vn.png'),
                  ),
                  subtitle: Text(
                    'Vietnamese is currently your country',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  title: const Text(
                    'Country',
                    style: TextStyle(fontSize: 19),
                  ),
                  onTap: () {
                    Future.delayed(
                      const Duration(
                        milliseconds: 180,
                      ),
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ChangeCountryScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ), // country

            // Language
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 25,
                ),
                dense: true,
                subtitle: Text(
                  'Vietnamese',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
                title: const Text(
                  'Language',
                  style: TextStyle(fontSize: 19),
                ),
                onTap: () {
                  //show dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const ChoseLanguageDialog();
                    },
                  );
                },
              ),
            ), // Language

            //Sercurity
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: Material(
                color: MyColors.white,
                child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: 25,
                  ),
                  dense: true,
                  title: const Text(
                    'Account Sercurity',
                    style: TextStyle(fontSize: 19),
                  ),
                  onTap: () {
                    Future.delayed(
                      const Duration(
                        milliseconds: 180,
                      ),
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const AccountSercurity(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ), //Sercurity

            //Policy
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: Material(
                color: MyColors.white,
                child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: 25,
                  ),
                  dense: true,
                  title: const Text(
                    'Policies',
                    style: TextStyle(fontSize: 19),
                  ),
                  onTap: () {
                    Future.delayed(
                      const Duration(
                        milliseconds: 180,
                      ),
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PolicyScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ), //Policy

            // Help
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 25,
                ),
                dense: true,
                title: const Text(
                  'Help',
                  style: TextStyle(fontSize: 19),
                ),
                onTap: () {},
              ),
            ), // Help

            //Contact Us
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: Material(
                color: MyColors.white,
                child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: 25,
                  ),
                  dense: true,
                  title: const Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 19),
                  ),
                  onTap: () {
                    Future.delayed(
                      const Duration(
                        milliseconds: 180,
                      ),
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ContactUsScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ), //Contact Us

            // Log out
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: MyColors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                  ),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: 25,
                  ),
                  dense: true,
                  titleAlignment: ListTileTitleAlignment.center,
                  title: const Center(
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  onTap: () {
                    Future.delayed(
                      const Duration(
                        milliseconds: 180,
                      ),
                      () {
                        FirebaseUtility().logoutUser();
                        Navigator.of(context).pop();
                      },
                    );
                  },
                ),
              ),
            ), // Log out
          ],
        ),
      ),
    );
  }
}
