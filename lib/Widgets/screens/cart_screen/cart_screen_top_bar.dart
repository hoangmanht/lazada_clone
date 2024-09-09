import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/colors.dart';

class CartScreenTopBar extends StatelessWidget {
  const CartScreenTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My cart',
              style: TextStyle(
                color: MyColors.headline,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 16,
                      child: Image.asset('lib/assets/icons/return.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Return for free(up to 30 day...',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 76, 79, 95),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
