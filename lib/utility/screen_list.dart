import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/screens/account_screen.dart';
import 'package:lazada_clone/Widgets/screens/cart_screen.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/inbox_screen.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/my_home_screen.dart';

class ScreenList {
  static List<Widget> myScreen = [
    const MyHomeScreen(),
    const Center(child: Text('Like')),
    const InboxScreen(),
    const CartScreen(),
    const AccountScreen(),
  ];
}
