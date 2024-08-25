import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazada_clone/Widgets/models/navigation_item.dart';
import 'package:lazada_clone/Widgets/my_custom_navigation_bar.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/top_bar.dart';
import 'package:lazada_clone/utility/colors.dart';

class MyHomeScreen extends StatelessWidget {
  MyHomeScreen({super.key});

  // bottom navigation index
  int currentIndex = 0;

  // NavigationBar's items
  List<MyNavigationItem> items = [
    MyNavigationItem(
      iconPath: 'lib/assets/icons/laz_logo.png',
      label: 'For you',
      itemIndex: 0,
    ),
    MyNavigationItem(
      iconPath: 'lib/assets/icons/like.svg',
      label: 'Like',
      itemIndex: 1,
    ),
    MyNavigationItem(
        iconPath: 'lib/assets/icons/inbox.svg', label: 'Inbox', itemIndex: 2),
    MyNavigationItem(
        iconPath: 'lib/assets/icons/cart.svg', label: 'Cart', itemIndex: 3),
    MyNavigationItem(
        iconPath: 'lib/assets/icons/account.svg',
        label: 'Account',
        itemIndex: 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      bottomNavigationBar: MyCustomNavigationBar(
        items: items,
      ),
      body: const TopBar(),
    );
  }
}
