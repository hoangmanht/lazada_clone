import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/colors.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 18,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text(
          'Address',
        ),
      ),
      backgroundColor: MyColors.white,
    );
  }
}
