import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazada_clone/Widgets/models/navigation_item.dart';
import 'package:lazada_clone/utility/colors.dart';

class MyCustomNavigationBar extends StatefulWidget {
  final List<MyNavigationItem> items;

  const MyCustomNavigationBar({super.key, required this.items});

  @override
  State<MyCustomNavigationBar> createState() => _MyCustomNavigationBarState();
}

class _MyCustomNavigationBarState extends State<MyCustomNavigationBar> {
  // current index
  int currentIndex = 0;

  // onNavigation Tab
  void onNavigationTab(int itemindex) {
    setState(() {
      currentIndex = itemindex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: MyColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...widget.items.map(
            (item) {
              int itemindex = item.itemIndex;
              return GestureDetector(
                onTap: () {
                  onNavigationTab(itemindex);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      child: Center(
                        child: SvgPicture.asset(
                          item.iconPath,
                          height: currentIndex != 0 ? 30 : 20,
                          color: currentIndex == item.itemIndex
                              ? MyColors.hotPink
                              : MyColors.icon,
                        ),
                      ),
                    ),
                    Text(
                      item.label,
                      style: TextStyle(
                          color: currentIndex == item.itemIndex
                              ? MyColors.hotPink
                              : MyColors.icon),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
