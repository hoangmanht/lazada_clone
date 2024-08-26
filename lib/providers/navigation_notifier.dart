import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationNotifier extends Notifier<int> {
  int currentIndex = 0;

  @override
  build() {
    return currentIndex;
  }

  // method to update index
  void updateCurrentIndex(int index) {
    currentIndex = index;
    state = currentIndex;
  }
}

final navigationNotifierProvider =
    NotifierProvider<NavigationNotifier, int>(() => NavigationNotifier());
