import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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

  // scroll controller
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = -1;
  double normalizedScrollPosition = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        // caculate scroll position
        if (_scrollController.hasClients) {
          normalizedScrollPosition = _scrollController.offset /
              ((_scrollController.position.maxScrollExtent / 3.5) +
                  _scrollController.position.viewportDimension);
          _scrollPosition = (2 * normalizedScrollPosition - 1);
          print(normalizedScrollPosition);
        } else {
          setState(() {
            _scrollPosition = -1;
          });
        }
      });
    });
  }

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
            height: 270,
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
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: OptionItemList.optionItemList.length,
                    itemBuilder: (context, index) {
                      return index == 0
                          ? Container(
                              width: 130,
                              alignment: Alignment.topCenter,
                              padding: const EdgeInsets.only(left: 10),
                              child: OptionItemList.optionItemList[index].image,
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 55,
                                  width: 55,
                                  child: OptionItemList
                                      .optionItemList[index].image,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 75,
                                  child: Text(
                                    OptionItemList.optionItemList[index].title,
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        height: 1.2,
                                        fontSize: 12,
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
                    height: 4,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(2.5)),
                    child: Align(
                      alignment: Alignment(_scrollPosition, 0.0),
                      child: Container(
                        width: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.5),
                          color: MyColors.hotPink,
                        ),
                      ),
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
