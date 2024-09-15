import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:lazada_clone/utility/colors.dart';

class AccountSercurity extends StatefulWidget {
  const AccountSercurity({super.key});

  @override
  State<AccountSercurity> createState() => _AccountSercurityState();
}

class _AccountSercurityState extends State<AccountSercurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
          'Privacy Protection',
        ),
      ), // app bar
      body: Column(
        children: [
          // allow contact
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
                    'Allow my Contact list to search me',
                    style: TextStyle(fontSize: 16),
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
          ), // allow contact

          // system setting
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
                    'System Setting',
                    style: TextStyle(fontSize: 16),
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
          ), // system setting

          // account deletion
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
                    'Account Deletion',
                    style: TextStyle(fontSize: 16),
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
          ), // account deletion

          // freeze My account
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
                    'Freeze My Account',
                    style: TextStyle(fontSize: 16),
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
          ), // freeze My account
        ],
      ),
    );
  }
}
