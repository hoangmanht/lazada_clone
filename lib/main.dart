import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lazada_clone/Widgets/models/navigation_item.dart';
import 'package:lazada_clone/Widgets/my_custom_navigation_bar.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/my_home_screen.dart';
import 'package:lazada_clone/providers/navigation_notifier.dart';
import 'package:lazada_clone/utility/screen_list.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProviderScope(child: MyApp()),
    ),
  );
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  // NavigationBar's items
  List<MyNavigationItem> items = [
    MyNavigationItem(
      iconPath: 'lib/assets/icons/like.svg',
      label: 'Like',
      itemIndex: 1,
    ),
    MyNavigationItem(
      iconPath: 'lib/assets/icons/inbox.svg',
      label: 'Inbox',
      itemIndex: 2,
    ),
    MyNavigationItem(
      iconPath: 'lib/assets/icons/cart.svg',
      label: 'Cart',
      itemIndex: 3,
    ),
    MyNavigationItem(
        iconPath: 'lib/assets/icons/account.svg',
        label: 'Account',
        itemIndex: 4),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationIndex = ref.watch(navigationNotifierProvider);

    return Scaffold(
      bottomNavigationBar: MyCustomNavigationBar(
        items: items,
      ),
      body: ScreenList.myScreen[navigationIndex],
    );
  }
}
