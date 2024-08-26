import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/top_bar.dart';
import 'package:lazada_clone/utility/colors.dart';

class MyHomeScreen extends StatelessWidget {
  MyHomeScreen({super.key});

  // bottom navigation index
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: const TopBar(),
    );
  }
}
