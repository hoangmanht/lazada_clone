import 'package:lazada_clone/Widgets/models/comment.dart';
import 'package:lazada_clone/Widgets/models/feature.dart';
import 'package:lazada_clone/Widgets/models/item_product.dart';
import 'dart:math';

class ItemProductList {
  static List<ItemProduct> itemproductList = [
    ItemProduct(
      imageUrl: 'lib/assets/product_items/iphone.png',
      discountPrice: 29.000,
      percentageDiscount: '42%',
      title:
          "[Incredible - New arrivals] - GET IPHONE 13 PROMAXX - 512GB- VOUCHER-VNM552214453",
      ratingTotal: 170,
      ratingScore: 4.4,
      sold: 488,
      features: [
        Feature(title: 'Screen Size', content: '6700 inches'),
        Feature(title: 'Operating System', content: 'IOS'),
        Feature(title: 'Battery Capacity (mAh)', content: '3600 mAh'),
        Feature(title: 'Brand', content: 'No Brand'),
        Feature(title: 'Memory System', content: '512 GB'),
        Feature(title: 'Condition', content: 'New'),
        Feature(title: 'Number of Cameras', content: '3x(Triple Camera)'),
        Feature(title: 'SIM Slot', content: '1'),
        Feature(title: 'Warranty Type', content: 'Electronic Warranty'),
      ],
      tags: [
        'Image/Video(46)',
        'returning customer(38)',
        'High Quality(6)',
        'Recommented(3)'
      ],
      itemCategory: ItemCategory.forYou,
      location: 'Ha Noi',
      promoteContent:
          "Please read the description carefully:\nProduct Content: [VOUCHERR] - IPHONE 13 PROMAX - 512GB - FULL BOX GIFT\nAfter every 2000 Vouchers issued, the system will randomly select 5 Vouchers to receive 5 iPhone 13 Pro Max 512GB in random colors at the price of 0 VND.\nConditions and specific terms:\nAll customers with shopping accounts on Lazada's e-commerce platform have the right to participate.To participate in the promotion, customers should select and purchase a Lazada voucher on the E.T Store page in the Lazada app to have a chance to win prizes.Every time you make a purchase, the product you receive includes:01 Voucher with a code containing 6 random characters.1 random gift product such as: phone accessories, laptop accessories, watches, keychains, wireless headphones, etc.After receiving the code, please provide the code to the Shop to receive the reward.Rate 5 stars along with the color of the phone you wish to receive.Every month, the program will directly announce 5 winning codes, with 5 customers holding the codes receiving a prize of 5 iPhone 13 Pro Max 512GB and cash prizes worth from 100,000 VND to 10,000,000 VND. The results will be directly announced on the E.T Store homepage.",
      comments: [
        Comment(
          imageUrl: 'ib/assets/comments/1.png',
          comment:
              'I like the blue iPhone. Large storage capacity, smooth multitasking experience, fast and efficient performance. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/2.png',
          comment:
              ' Triple camera, large storage capacity, smooth multitasking experience, many color options, stylish and modern design, high-quality camera, long-lasting battery, fast and efficient performance.',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/3.png',
          comment:
              'Shipping quickly and verry well packing, i realy like this product. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
      ],
    ),
    ItemProduct(
      imageUrl: 'lib/assets/product_items/iphone.png',
      discountPrice: 29.000,
      percentageDiscount: '42%',
      title:
          "[Incredible - New arrivals] - GET IPHONE 13 PROMAXX - 512GB- VOUCHER-VNM552214453",
      ratingTotal: 170,
      ratingScore: 4.4,
      sold: 488,
      features: [
        Feature(title: 'Screen Size', content: '6700 inches'),
        Feature(title: 'Operating System', content: 'IOS'),
        Feature(title: 'Battery Capacity (mAh)', content: '3600 mAh'),
        Feature(title: 'Brand', content: 'No Brand'),
        Feature(title: 'Memory System', content: '512 GB'),
        Feature(title: 'Condition', content: 'New'),
        Feature(title: 'Number of Cameras', content: '3x(Triple Camera)'),
        Feature(title: 'SIM Slot', content: '1'),
        Feature(title: 'Warranty Type', content: 'Electronic Warranty'),
      ],
      tags: [
        'Image/Video(46)',
        'returning customer(38)',
        'High Quality(6)',
        'Recommented(3)'
      ],
      itemCategory: ItemCategory.forYou,
      location: 'Ha Noi',
      promoteContent:
          "Please read the description carefully:\nProduct Content: [VOUCHERR] - IPHONE 13 PROMAX - 512GB - FULL BOX GIFT\nAfter every 2000 Vouchers issued, the system will randomly select 5 Vouchers to receive 5 iPhone 13 Pro Max 512GB in random colors at the price of 0 VND.\nConditions and specific terms:\nAll customers with shopping accounts on Lazada's e-commerce platform have the right to participate.To participate in the promotion, customers should select and purchase a Lazada voucher on the E.T Store page in the Lazada app to have a chance to win prizes.Every time you make a purchase, the product you receive includes:01 Voucher with a code containing 6 random characters.1 random gift product such as: phone accessories, laptop accessories, watches, keychains, wireless headphones, etc.After receiving the code, please provide the code to the Shop to receive the reward.Rate 5 stars along with the color of the phone you wish to receive.Every month, the program will directly announce 5 winning codes, with 5 customers holding the codes receiving a prize of 5 iPhone 13 Pro Max 512GB and cash prizes worth from 100,000 VND to 10,000,000 VND. The results will be directly announced on the E.T Store homepage.",
      comments: [
        Comment(
          imageUrl: 'ib/assets/comments/1.png',
          comment:
              'I like the blue iPhone. Large storage capacity, smooth multitasking experience, fast and efficient performance. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/2.png',
          comment:
              ' Triple camera, large storage capacity, smooth multitasking experience, many color options, stylish and modern design, high-quality camera, long-lasting battery, fast and efficient performance.',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/3.png',
          comment:
              'Shipping quickly and verry well packing, i realy like this product. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
      ],
    ),
    ItemProduct(
      imageUrl: 'lib/assets/product_items/iphone.png',
      discountPrice: 29.000,
      percentageDiscount: '42%',
      title:
          "[Incredible - New arrivals] - GET IPHONE 13 PROMAXX - 512GB- VOUCHER-VNM552214453",
      ratingTotal: 170,
      ratingScore: 4.4,
      sold: 488,
      features: [
        Feature(title: 'Screen Size', content: '6700 inches'),
        Feature(title: 'Operating System', content: 'IOS'),
        Feature(title: 'Battery Capacity (mAh)', content: '3600 mAh'),
        Feature(title: 'Brand', content: 'No Brand'),
        Feature(title: 'Memory System', content: '512 GB'),
        Feature(title: 'Condition', content: 'New'),
        Feature(title: 'Number of Cameras', content: '3x(Triple Camera)'),
        Feature(title: 'SIM Slot', content: '1'),
        Feature(title: 'Warranty Type', content: 'Electronic Warranty'),
      ],
      tags: [
        'Image/Video(46)',
        'returning customer(38)',
        'High Quality(6)',
        'Recommented(3)'
      ],
      itemCategory: ItemCategory.forYou,
      location: 'Ha Noi',
      promoteContent:
          "Please read the description carefully:\nProduct Content: [VOUCHERR] - IPHONE 13 PROMAX - 512GB - FULL BOX GIFT\nAfter every 2000 Vouchers issued, the system will randomly select 5 Vouchers to receive 5 iPhone 13 Pro Max 512GB in random colors at the price of 0 VND.\nConditions and specific terms:\nAll customers with shopping accounts on Lazada's e-commerce platform have the right to participate.To participate in the promotion, customers should select and purchase a Lazada voucher on the E.T Store page in the Lazada app to have a chance to win prizes.Every time you make a purchase, the product you receive includes:01 Voucher with a code containing 6 random characters.1 random gift product such as: phone accessories, laptop accessories, watches, keychains, wireless headphones, etc.After receiving the code, please provide the code to the Shop to receive the reward.Rate 5 stars along with the color of the phone you wish to receive.Every month, the program will directly announce 5 winning codes, with 5 customers holding the codes receiving a prize of 5 iPhone 13 Pro Max 512GB and cash prizes worth from 100,000 VND to 10,000,000 VND. The results will be directly announced on the E.T Store homepage.",
      comments: [
        Comment(
          imageUrl: 'ib/assets/comments/1.png',
          comment:
              'I like the blue iPhone. Large storage capacity, smooth multitasking experience, fast and efficient performance. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/2.png',
          comment:
              ' Triple camera, large storage capacity, smooth multitasking experience, many color options, stylish and modern design, high-quality camera, long-lasting battery, fast and efficient performance.',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/3.png',
          comment:
              'Shipping quickly and verry well packing, i realy like this product. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
      ],
    ),
    ItemProduct(
      imageUrl: 'lib/assets/product_items/iphone.png',
      discountPrice: 29.000,
      percentageDiscount: '42%',
      title:
          "[Incredible - New arrivals] - GET IPHONE 13 PROMAXX - 512GB- VOUCHER-VNM552214453",
      ratingTotal: 170,
      ratingScore: 4.4,
      sold: 488,
      features: [
        Feature(title: 'Screen Size', content: '6700 inches'),
        Feature(title: 'Operating System', content: 'IOS'),
        Feature(title: 'Battery Capacity (mAh)', content: '3600 mAh'),
        Feature(title: 'Brand', content: 'No Brand'),
        Feature(title: 'Memory System', content: '512 GB'),
        Feature(title: 'Condition', content: 'New'),
        Feature(title: 'Number of Cameras', content: '3x(Triple Camera)'),
        Feature(title: 'SIM Slot', content: '1'),
        Feature(title: 'Warranty Type', content: 'Electronic Warranty'),
      ],
      tags: [
        'Image/Video(46)',
        'returning customer(38)',
        'High Quality(6)',
        'Recommented(3)'
      ],
      itemCategory: ItemCategory.forYou,
      location: 'Ha Noi',
      promoteContent:
          "Please read the description carefully:\nProduct Content: [VOUCHERR] - IPHONE 13 PROMAX - 512GB - FULL BOX GIFT\nAfter every 2000 Vouchers issued, the system will randomly select 5 Vouchers to receive 5 iPhone 13 Pro Max 512GB in random colors at the price of 0 VND.\nConditions and specific terms:\nAll customers with shopping accounts on Lazada's e-commerce platform have the right to participate.To participate in the promotion, customers should select and purchase a Lazada voucher on the E.T Store page in the Lazada app to have a chance to win prizes.Every time you make a purchase, the product you receive includes:01 Voucher with a code containing 6 random characters.1 random gift product such as: phone accessories, laptop accessories, watches, keychains, wireless headphones, etc.After receiving the code, please provide the code to the Shop to receive the reward.Rate 5 stars along with the color of the phone you wish to receive.Every month, the program will directly announce 5 winning codes, with 5 customers holding the codes receiving a prize of 5 iPhone 13 Pro Max 512GB and cash prizes worth from 100,000 VND to 10,000,000 VND. The results will be directly announced on the E.T Store homepage.",
      comments: [
        Comment(
          imageUrl: 'ib/assets/comments/1.png',
          comment:
              'I like the blue iPhone. Large storage capacity, smooth multitasking experience, fast and efficient performance. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/2.png',
          comment:
              ' Triple camera, large storage capacity, smooth multitasking experience, many color options, stylish and modern design, high-quality camera, long-lasting battery, fast and efficient performance.',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/3.png',
          comment:
              'Shipping quickly and verry well packing, i realy like this product. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
      ],
    ),
  ];
}
