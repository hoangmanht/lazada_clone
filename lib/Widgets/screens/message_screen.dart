import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:lazada_clone/utility/colors.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Message',
        ),
      ),
      body: ListView(
        children: [
          // nofication title
          Container(
            padding: EdgeInsets.only(
              left: 10,
            ),
            alignment: Alignment.centerLeft,
            color: Colors.grey.shade200,
            height: 45,
            child: Text(
              textAlign: TextAlign.start,
              'Nofication',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500,
              ),
            ),
          ), // nofication title

          // active account
          Container(
            padding: const EdgeInsets.only(left: 10, right: 20),
            height: 50,
            color: const Color.fromARGB(255, 251, 239, 221),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Only one more step to active nofication.\ngo to setting to turn on nofication',
                  style: TextStyle(
                    color: Color.fromARGB(255, 245, 113, 34),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 245, 113, 34),
                  radius: 17,
                  child: Icon(
                    Icons.settings,
                    size: 21,
                    color: MyColors.white,
                  ),
                ),
              ],
            ),
          ), // active account

          // promotions
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
              subtitle: Text(
                'be the first find out about our upcoming deals',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Promotions',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AdvancedSwitch(
                    activeColor: MyColors.blue,
                    onChanged: (value) {},
                    height: 20,
                    width: 45,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ), // discount

          // order
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
              subtitle: Text(
                "Get the latest status on your order",
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Orders',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AdvancedSwitch(
                    activeColor: MyColors.blue,
                    onChanged: (value) {},
                    height: 20,
                    width: 45,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ), // order

          // activities
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
              subtitle: Text(
                'update on price drops, feed and other in-app event',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Activities',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AdvancedSwitch(
                    activeColor: MyColors.blue,
                    onChanged: (value) {},
                    height: 20,
                    width: 45,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ), // activity

          // diccount seller
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
              subtitle: Text(
                'Get notifiled when you recieve a private \nchat messsages',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Seller promo',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AdvancedSwitch(
                    activeColor: MyColors.blue,
                    onChanged: (value) {},
                    height: 20,
                    width: 45,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ), // discount seller

          // chat
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
              subtitle: Text(
                'be the first person get infomation abbout\nupcoming promotion',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Discount',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AdvancedSwitch(
                    activeColor: MyColors.blue,
                    onChanged: (value) {},
                    height: 20,
                    width: 45,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ), // chat

          // other channels
          Container(
            padding: EdgeInsets.only(
              left: 10,
            ),
            alignment: Alignment.centerLeft,
            color: Colors.grey.shade200,
            height: 45,
            child: Text(
              textAlign: TextAlign.start,
              'Other Channels',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500,
              ),
            ),
          ), // other channels

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
              subtitle: Text(
                'Recieve our E-newsletters and handpicked\n recomendations via email',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AdvancedSwitch(
                    activeColor: MyColors.blue,
                    onChanged: (value) {},
                    height: 20,
                    width: 45,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ), // email

          // sms
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
              subtitle: Text(
                'Recieve our extra special, not-to-be-missed offers\nvia SMS',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Discount',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AdvancedSwitch(
                    activeColor: MyColors.blue,
                    onChanged: (value) {},
                    height: 20,
                    width: 45,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ), // sms

          // whatsApp
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
              subtitle: Text(
                "Recieve oromos message via What'sApp",
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "WhatsApp",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AdvancedSwitch(
                    activeColor: MyColors.blue,
                    onChanged: (value) {},
                    height: 20,
                    width: 45,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ), // what'sApp

          // Zalo
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
              subtitle: Text(
                'Recieve order status updates and promo message via\nZalo',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Zalo',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AdvancedSwitch(
                    activeColor: MyColors.blue,
                    onChanged: (value) {},
                    height: 20,
                    width: 45,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ), // Zalo
        ],
      ),
    );
  }
}
