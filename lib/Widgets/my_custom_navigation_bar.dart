import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
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
      height: 70,
      decoration: BoxDecoration(
        color: MyColors.white,
        border: Border(
          top: BorderSide(color: Colors.grey.shade100, width: 2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // home item
            GestureDetector(
              onTap: onHomeTab,
              child: SizedBox(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      child: Center(
                        child: homeTab
                            ? Image.asset(
                                'lib/assets/icons/laz_logo.png',
                                height: 27,
                              )
                            : SvgPicture.asset(
                                'lib/assets/icons/home.svg',
                                height: 30,
                              ),
                      ),
                    ),
                    Text(
                      homeTab ? 'For you' : 'Home',
                      style: TextStyle(
                        color: homeTab ? MyColors.hotPink : MyColors.icon,
                        fontWeight:
                            homeTab ? FontWeight.bold : FontWeight.normal,
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
                return GestureDetector(
                  onTap: () {
                    onNavigationTab(intemIndex: itemindex, ref: ref);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Center(
                          child: SvgPicture.asset(
                            item.iconPath,
                            height: 30,
                            color: navigationIndex == item.itemIndex &&
                                    firstTab &&
                                    homeTab == false
                                ? MyColors.hotPink
                                : MyColors.icon,
                          ),
                        ),
                      ),
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
