import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String imageUrl;
  final String text;

  const TabItem({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 22, child: Image.asset(imageUrl)),
            SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
