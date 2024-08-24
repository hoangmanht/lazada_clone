import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/my_home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHomeScreen(),
    );
  }
}
