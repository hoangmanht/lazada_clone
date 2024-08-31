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
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemCount: ItemProductList.itemproductList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6), topRight: Radius.circular(6)),
                color: MyColors.white,
              ),
            );
          }),
    );
  }
}
