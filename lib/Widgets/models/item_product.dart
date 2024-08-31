import 'package:lazada_clone/Widgets/models/comment.dart';
import 'package:lazada_clone/Widgets/models/feature.dart';

enum ItemCategory { forYou, doNotMiss, xu, newItems }

class ItemProduct {
  final String imageUrl;
  final double? price;
  final double discountPrice;
  final String percentageDiscount;
  final String title;
  final double ratingTotal;
  final double ratingScore;
  final double sold;
  final List<Feature> features;
  final String location;
  final String promoteContent;
  final List<String> tags;
  final List<Comment> comments;
  final ItemCategory itemCategory;

  ItemProduct(
      {required this.imageUrl,
      this.price,
      required this.discountPrice,
      required this.percentageDiscount,
      required this.title,
      required this.ratingTotal,
      required this.ratingScore,
      required this.sold,
      required this.features,
      required this.tags,
      required this.itemCategory,
      required this.location,
      required this.promoteContent,
      required this.comments});
}
