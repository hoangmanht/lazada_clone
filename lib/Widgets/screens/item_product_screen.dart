import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/colors.dart';
import 'package:lazada_clone/utility/item_product_list.dart';

class ItemProductScreen extends StatefulWidget {
  const ItemProductScreen({super.key});

  @override
  State<ItemProductScreen> createState() => _ItemProductScreenState();
}

class _ItemProductScreenState extends State<ItemProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 11,
          mainAxisSpacing: 5,
          childAspectRatio: 0.56,
        ),
        itemCount: ItemProductList.itemproductList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: MyColors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(9),
                        topRight: Radius.circular(9)),
                    child: Image.asset(
                      ItemProductList.itemproductList[index].imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ItemProductList.itemproductList[index].title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '${ItemProductList.itemproductList[index].discountPrice.toStringAsFixed(3)} đ',
                            style: TextStyle(
                              color: MyColors.hotPink,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            color: MyColors.hotPink.withOpacity(0.1),
                            child: Text(
                              '-${ItemProductList.itemproductList[index].percentageDiscount}',
                              style: TextStyle(
                                color: MyColors.hotPink,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        color: MyColors.hotPink.withOpacity(0.1),
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          ItemProductList.itemproductList[index].benefit,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: MyColors.hotPink,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber[600],
                          ),
                          Text(
                            '${ItemProductList.itemproductList[index].ratingScore}'
                            '(${ItemProductList.itemproductList[index].ratingTotal})',
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${ItemProductList.itemproductList[index].sold}'
                            ' Sold',
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.place,
                            color: Colors.grey.shade400,
                          ),
                          Text(
                            ItemProductList.itemproductList[index].location
                                .toUpperCase(),
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
