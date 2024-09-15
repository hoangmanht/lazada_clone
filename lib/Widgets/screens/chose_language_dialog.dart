import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/colors.dart';

class ChoseLanguageDialog extends StatefulWidget {
  const ChoseLanguageDialog({super.key});

  @override
  State<ChoseLanguageDialog> createState() => _ChoseLanguageDialogState();
}

class _ChoseLanguageDialogState extends State<ChoseLanguageDialog> {
  int? languageGroupValue;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      backgroundColor: MyColors.white,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        width: 600,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ngôn ngữ / Language',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: const Text(
                'Tiếng Việt',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              leading: Transform.scale(
                scale: 1.2,
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
                  value: 0,
                  groupValue: languageGroupValue,
                  onChanged: (value) {
                    setState(() {
                      languageGroupValue = value;
                    });
                  },
                ),
              ),
            ),
            ListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: const Text(
                  'English',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
                leading: Transform.scale(
                  scale: 1.2,
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
                    value: 1,
                    groupValue: languageGroupValue,
                    onChanged: (value) {
                      setState(() {
                        languageGroupValue = value;
                      });
                    },
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'CANCEL',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 28, 156, 183),
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'APPLY',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 28, 156, 183),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
