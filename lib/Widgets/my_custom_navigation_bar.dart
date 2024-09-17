import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lazada_clone/Widgets/models/navigation_item.dart';
import 'package:lazada_clone/providers/navigation_notifier.dart';
import 'package:lazada_clone/utility/colors.dart';

class MyCustomNavigationBar extends ConsumerStatefulWidget {
  final List<MyNavigationItem> items;

  const MyCustomNavigationBar({super.key, required this.items});

  @override
  ConsumerState<MyCustomNavigationBar> createState() =>
      _MyCustomNavigationBarState();
}

class _MyCustomNavigationBarState extends ConsumerState<MyCustomNavigationBar> {
  // current index
  int currentIndex = 0;
  bool firstTab = false;
  bool homeTab = true;

  // onNavigation Tab
  void onNavigationTab({required WidgetRef ref, required int intemIndex}) {
    setState(() {
      ref
          .read(navigationNotifierProvider.notifier)
          .updateCurrentIndex(intemIndex);
      firstTab = true;
      homeTab = false;
    });
  }

  // on Home tab
  void onHomeTab() {
    setState(() {
      ref.read(navigationNotifierProvider.notifier).updateCurrentIndex(0);
      firstTab = true;
      homeTab = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final navigationIndex = ref.watch(navigationNotifierProvider);

    return Container(
      height: 58,
      decoration: BoxDecoration(
        color: navigationIndex == 1
            ? const Color.fromARGB(255, 28, 28, 28)
            : MyColors.white,
        border: Border(
          top: BorderSide(
              color: navigationIndex == 1
                  ? Colors.transparent
                  : Colors.grey.shade100,
              width: 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // home item
          Expanded(
            child: GestureDetector(
              onTap: onHomeTab,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Center(
                      child: homeTab
                          ? Image.asset(
                              'lib/assets/icons/laz_logo.png',
                              height: 22,
                            )
                          : Image.asset(
                              'lib/assets/icons/home.png',
                              width: 20,
                            ),
                    ),
                  ),
                  Text(
                    homeTab ? 'For you' : 'Home',
                    style: TextStyle(
                      color: homeTab ? MyColors.hotPink : MyColors.icon,
                      fontWeight: homeTab ? FontWeight.bold : FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // navigation bar items
          ...widget.items.map(
            (item) {
              int itemindex = item.itemIndex;
              return Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      onNavigationTab(intemIndex: itemindex, ref: ref);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            width: 20,
                            navigationIndex == item.itemIndex &&
                                    firstTab &&
                                    homeTab == false
                                ? item.iconPath + '_2.png'
                                : item.iconPath + '.png'),
                        Text(
                          item.label,
                          style: TextStyle(
                            color: navigationIndex == item.itemIndex &&
                                    firstTab &&
                                    homeTab == false
                                ? MyColors.hotPink
                                : MyColors.icon,
                            fontWeight: navigationIndex == item.itemIndex &&
                                    firstTab &&
                                    homeTab == false
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
