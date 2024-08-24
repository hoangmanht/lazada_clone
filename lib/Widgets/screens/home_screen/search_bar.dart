import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(2),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              const Color.fromARGB(255, 254, 146, 16),
              MyColors.hotPink,
            ],
          ),
        ),
        child: TextField(
          style: const TextStyle(fontSize: 17),
          cursorColor: MyColors.hotPink,
          decoration: InputDecoration(
            filled: true,
            fillColor: MyColors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          ),
        ),
      ),
    );
  }
}
