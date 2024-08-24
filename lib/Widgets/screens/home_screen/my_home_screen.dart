import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/top_bar.dart';
import 'package:lazada_clone/utility/colors.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: const TopBar(),
    );
  }
}
