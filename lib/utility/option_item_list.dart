import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/options_item.dart';

class OptionItemList {
  static List<OptionsItem> optionItemList = [
    OptionsItem(
        title: 'LazzMall',
        image: Image.asset(
          'lib/assets/images/lazmall.png',
          fit: BoxFit.cover,
        )),
    OptionsItem(
        title: 'LIVESTREAM \nDEAL 60%',
        image: Image.asset('lib/assets/images/voucher LIVE.png')),
    OptionsItem(
        title: 'Pick Fruit \nfrom tree',
        image: Image.asset(
          'lib/assets/images/Pick Fruit from tree.png',
          fit: BoxFit.cover,
        )),
    OptionsItem(
        title: 'Payment \nDiscount',
        image: Image.asset(
          'lib/assets/images/Payment Discount.png',
          fit: BoxFit.cover,
        )),
    OptionsItem(
        title: 'LazFlash',
        image: Image.asset(
          'lib/assets/images/LazFlash.png',
          fit: BoxFit.cover,
        )),
    OptionsItem(
        title: 'Buy More \nDiscount More',
        image: Image.asset(
          'lib/assets/images/by more discount more.png',
          fit: BoxFit.cover,
        )),
    OptionsItem(
        title: 'Lucky Egg',
        image: Image.asset(
          'lib/assets/images/lucky egg.png',
          fit: BoxFit.cover,
        )),
    OptionsItem(
        title: 'LazMall \nDaily',
        image: Image.asset(
          'lib/assets/images/LazMall daily.png',
          fit: BoxFit.cover,
        )),
    OptionsItem(
        title: 'Top Up \n Phone',
        image: Image.asset(
          'lib/assets/images/Top Up Phone.png',
          fit: BoxFit.cover,
        )),
    OptionsItem(
        title: 'More',
        image: Image.asset(
          'lib/assets/images/more.png',
          fit: BoxFit.cover,
        )),
  ];
}
