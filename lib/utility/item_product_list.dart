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
      benefit: 'you save 300 đ',
    ),
    ItemProduct(
      imageUrl: 'lib/assets/product_items/robot.png',
      discountPrice: 66.000,
      percentageDiscount: '51%',
      title: "Smart robot vacuum cleaner",
      ratingTotal: 1400,
      ratingScore: 4.9,
      sold: 2000,
      features: [
        Feature(title: 'Feature', content: 'control dashboard'),
        Feature(title: 'Brand', content: 'Sada'),
        Feature(title: 'mdoel', content: 'EA10327'),
        Feature(title: 'Made in', content: 'VietNam'),
        Feature(title: 'Warranty type', content: 'no Warranty'),
        Feature(title: 'Content', content: 'Smart robot vacuum cleaner'),
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
          "Product Description:In today's busy world, it's challenging to find time for household chores after work. Many women and housewives are exhausted from the excessive workload. The creation of robot vacuum cleaners aims to provide a better life for everyone.This smart robot vacuum cleaner is designed to make your life easier. It can navigate under furniture with its ultra-thin design, and its intelligent navigation technology ensures thorough cleaning coverage. The powerful suction can pick up even the finest dust, hair, and pet fur.With its 3-in-1 function, this robot can sweep, vacuum, and mop your floors. The large dustbin capacity allows for extended cleaning sessions without frequent emptying. The obstacle avoidance feature prevents collisions with furniture and other objects, while the smart dust detection ensures that dirty areas are thoroughly cleaned.The included wet cloth makes it easy to mop your floors, and the simple one-button control makes operation effortless. The long battery life allows for up to 90 minutes of continuous cleaning.",
      comments: [
        Comment(
          imageUrl: 'ib/assets/comments/4.png',
          comment:
              'I like the blue iPhone. Large storage capacity, smooth multitasking experience, fast and efficient performance. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/5.png',
          comment:
              ' Triple camera, large storage capacity, smooth multitasking experience, many color options, stylish and modern design, high-quality camera, long-lasting battery, fast and efficient performance.',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/6.png',
          comment:
              'Shipping quickly and verry well packing, i realy like this product. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
      ],
      benefit: 'you save 300 đ',
    ),
    ItemProduct(
      imageUrl: 'lib/assets/product_items/bag.png',
      discountPrice: 45.000,
      percentageDiscount: '60%',
      title: "Fashion Croosbody bag with multiple compartments",
      ratingTotal: 244,
      ratingScore: 4.8,
      sold: 300,
      features: [
        Feature(title: 'Material', content: 'Nylon'),
        Feature(title: 'Pattern', content: 'Plain'),
        Feature(title: 'Brand', content: 'ELACCENT'),
        Feature(title: 'Brand', content: 'No Brand'),
        Feature(title: 'Features', content: 'waterproof'),
        Feature(title: 'Origin', content: 'China'),
        Feature(title: 'Sutable for', content: 'Others'),
        Feature(title: 'Code', content: 'LB60187'),
        Feature(title: 'Style', content: 'Casual'),
        Feature(title: 'Warranty', content: 'No Warranty'),
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
          imageUrl: 'ib/assets/comments/7.png',
          comment:
              'I like the blue iPhone. Large storage capacity, smooth multitasking experience, fast and efficient performance. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/8.png',
          comment:
              ' Triple camera, large storage capacity, smooth multitasking experience, many color options, stylish and modern design, high-quality camera, long-lasting battery, fast and efficient performance.',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/9.png',
          comment:
              'Shipping quickly and verry well packing, i realy like this product. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
      ],
      benefit: 'you save 300 đ',
    ),
    ItemProduct(
      imageUrl: 'lib/assets/product_items/kettle.png',
      discountPrice: 69.000,
      percentageDiscount: '30%',
      title: "Premium glass kettle",
      ratingTotal: 236,
      ratingScore: 4.4,
      sold: 1000,
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
          imageUrl: 'ib/assets/comments/11.png',
          comment:
              'I like the blue iPhone. Large storage capacity, smooth multitasking experience, fast and efficient performance. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/11.png',
          comment:
              ' Triple camera, large storage capacity, smooth multitasking experience, many color options, stylish and modern design, high-quality camera, long-lasting battery, fast and efficient performance.',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
        Comment(
          imageUrl: 'ib/assets/comments/12.png',
          comment:
              'Shipping quickly and verry well packing, i realy like this product. ',
          startRate: 5,
          datePost: '29 thng 7 2024',
          userAvatarUrl: 'lib/assets/avatars/${Random().nextInt(9)}.png',
        ),
      ],
      benefit: 'you save 300 đ',
    ),
  ];
}
