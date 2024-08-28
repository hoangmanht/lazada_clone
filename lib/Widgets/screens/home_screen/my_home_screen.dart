import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/top_bar.dart';
import 'package:lazada_clone/utility/banner_list.dart';
import 'package:lazada_clone/utility/colors.dart';
import 'package:lazada_clone/utility/option_item_list.dart';
import 'package:lazada_clone/utility/screen_list.dart';

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  // bottom navigation index
  int currentIndex = 0;

  // carousel index
  int carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Column(
        children: [
          // top bar
          const TopBar(),

          // promotion section
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            height: 300,
            color: MyColors.white,
            child: Column(
              children: [
                // carousel slider
                Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 1.0,
                        height: 160,
                        onPageChanged: (index, reason) {
                          setState(() {
                            carouselIndex = index;
                          });
                        },
                      ),
                      items: BannerList.imageUrls.map((url) {
                        return Builder(builder: (BuildContext context) {
                          return Container(
                            width: double.infinity,
                            margin: const EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                url,
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        });
                      }).toList(),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 170,
                      child: CarouselIndicator(
                        cornerRadius: 100,
                        height: 7,
                        width: 7,
                        index: carouselIndex,
                        count: ScreenList.myScreen.length,
                      ),
                    ),
                  ],
                ),

                // items
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: OptionItemList.optionItemList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: OptionItemList.optionItemList[index].image,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 50,
                            width: 90,
                            child: Text(
                              OptionItemList.optionItemList[index].title,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  height: 1.2,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),

                // Custom bottom scrollbar
                Padding(
                  padding:
                      const EdgeInsets.only(left: 178, right: 178, bottom: 8),
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
