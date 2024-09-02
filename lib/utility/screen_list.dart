import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/screens/account_screen.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/my_home_screen.dart';

class ScreenList {
  static List<Widget> myScreen = [
    MyHomeScreen(),
    Center(child: Text('Like')),
    Center(child: Text('inbox')),
    Center(child: Text('cart')),
    AccountScreen(),
  ];
}
