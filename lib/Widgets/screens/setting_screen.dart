import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/colors.dart';
import 'package:lazada_clone/utility/firebase_utility.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      // app bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
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
          'Setting',
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
                color: MyColors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                title: const Text(
                  'Account Info',
                  style: TextStyle(fontSize: 19),
                ),
                onTap: () {},
              ),
            ),
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
                title: const Text(
                  'Address',
                  style: TextStyle(fontSize: 19),
                ),
                onTap: () {},
              ),
            ),
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
                onTap: () {},
              ),
            ),
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
                leading: CountryFlag.fromCountryCode(
                  'VN',
                  height: 25,
                  width: 40,
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
                onTap: () {},
              ),
            ),
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
                onTap: () {},
              ),
            ),
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
                title: const Text(
                  'Sercurity',
                  style: TextStyle(fontSize: 19),
                ),
                onTap: () {},
              ),
            ),
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
                title: const Text(
                  'Policy',
                  style: TextStyle(fontSize: 19),
                ),
                onTap: () {},
              ),
            ),
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
                title: const Text(
                  'Help',
                  style: TextStyle(fontSize: 19),
                ),
                onTap: () {},
              ),
            ),
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
                title: const Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 19),
                ),
                onTap: () {},
              ),
            ),
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
                  titleAlignment: ListTileTitleAlignment.center,
                  title: const Center(
                    child: Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  onTap: () {
                    FirebaseUtility().logoutUser();
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
