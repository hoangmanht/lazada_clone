import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/colors.dart';

class ChangeCountryScreen extends StatefulWidget {
  const ChangeCountryScreen({super.key});

  @override
  State<ChangeCountryScreen> createState() => _ChangeCountryScreenState();
}

class _ChangeCountryScreenState extends State<ChangeCountryScreen> {
  // List of countries
  final List<Map<String, String>> countries = [
    {'name': 'Indonesia', 'flag': 'lib/assets/icons/flags/id.png'},
    {'name': 'Malaysia', 'flag': 'lib/assets/icons/flags/my.png'},
    {'name': 'Philippines', 'flag': 'lib/assets/icons/flags/ph.png'},
    {'name': 'Singapore', 'flag': 'lib/assets/icons/flags/sg.png'},
    {'name': 'Thailand', 'flag': 'lib/assets/icons/flags/th.png'},
    {'name': 'Vietnam', 'flag': 'lib/assets/icons/flags/vn.png'},
  ];

  // Selected country index
  int? selectedCountryIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,

      // appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 20,
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
          'Change country',
        ),
      ), // appbar

      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: MyColors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
            ),
            child: ListTile(
              title: Text(
                countries[index]['name'] ?? '',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: Image.asset(
                countries[index]['flag'] ?? '',
                width: 33,
              ),
              trailing: Transform.scale(
                scale: 1.3,
                child: Radio(
                  fillColor: WidgetStateProperty.resolveWith(
                    (states) {
                      // active
                      if (states.contains(WidgetState.selected)) {
                        return const Color.fromARGB(255, 28, 156, 183);
                      }
                      // inactive
                      return Colors.grey.shade500;
                    },
                  ),
                  value: index,
                  groupValue: selectedCountryIndex,
                  onChanged: (value) {
                    setState(
                      () {
                        selectedCountryIndex = value;
                      },
                    );
                  },
                ),
              ),
              onTap: () {
                setState(
                  () {
                    selectedCountryIndex = index;
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
