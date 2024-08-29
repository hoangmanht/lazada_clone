import 'package:lazada_clone/Widgets/models/item_display.dart';

class DisplayItemsList {
  // for New User
  static List<ItemDisplay> forNewUser = [
    ItemDisplay(
        imageUrl: 'lib/assets/images/item_displays/item_1.png',
        price: 70.000,
        disCountPrice: 370),
    ItemDisplay(
        imageUrl: 'lib/assets/images/item_displays/item_2.png',
        price: 21.800,
        disCountPrice: 6.700),
  ];

  static List<ItemDisplay> from3k = [
    ItemDisplay(
        imageUrl: 'lib/assets/images/item_displays/item_3.png',
        price: 18.000,
        disCountPrice: 3.800),
    ItemDisplay(
        imageUrl: 'lib/assets/images/item_displays/item_4.png',
        price: 85.100,
        disCountPrice: 43.600),
    ItemDisplay(
        imageUrl: 'lib/assets/images/item_displays/item_5.png',
        price: 19.000,
        disCountPrice: 3.000),
  ];
}
