import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/models/navigation_item.dart';
import 'package:lazada_clone/Widgets/my_custom_navigation_bar.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/my_home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // NavigationBar's items
  List<MyNavigationItem> items = [
    MyNavigationItem(
      iconPath: 'lib/assets/icons/like.svg',
      label: 'Like',
      itemIndex: 0,
    ),
    MyNavigationItem(
      iconPath: 'lib/assets/icons/inbox.svg',
      label: 'Inbox',
      itemIndex: 1,
    ),
    MyNavigationItem(
      iconPath: 'lib/assets/icons/cart.svg',
      label: 'Cart',
      itemIndex: 2,
    ),
    MyNavigationItem(
        iconPath: 'lib/assets/icons/account.svg',
        label: 'Account',
        itemIndex: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyCustomNavigationBar(
        items: items,
      ),
      body: MyHomeScreen(),
    );
  }
}
