import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String imageUrl;
  final String text;

  const TabItem({super.key, required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 22, child: Image.asset(imageUrl)),
            const SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: const TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
