import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/top_bar.dart';
import 'package:lazada_clone/utility/banner_list.dart';
import 'package:lazada_clone/utility/colors.dart';
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

          // carousel slider
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            height: 300,
            color: MyColors.white,
            child: Column(
              children: [
                Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 1.0,
                        height: 170,
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
                              child: Image.network(
                                url,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        });
                      }).toList(),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 150,
                      child: CarouselIndicator(
                        cornerRadius: 100,
                        height: 10,
                        width: 10,
                        index: carouselIndex,
                        count: ScreenList.myScreen.length,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
