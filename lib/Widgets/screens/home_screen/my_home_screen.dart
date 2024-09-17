import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lazada_clone/Widgets/screens/home_screen/top_bar.dart';
import 'package:lazada_clone/Widgets/screens/item_product_screen.dart';
import 'package:lazada_clone/Widgets/tab_item.dart';
import 'package:lazada_clone/utility/banner_list.dart';
import 'package:lazada_clone/utility/colors.dart';
import 'package:lazada_clone/utility/display_items_list.dart';
import 'package:lazada_clone/utility/option_item_list.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen>
    with TickerProviderStateMixin {
  // bottom navigation index
  int currentIndex = 0;

  // carousel index
  int carouselIndex = 0;

  // scroll controller
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = -1;
  double normalizedScrollPosition = 0;

  // tab bar controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 4, vsync: this, animationDuration: const Duration(seconds: 0));

    _scrollController.addListener(() {
      setState(() {
        // caculate scroll position
        if (_scrollController.hasClients) {
          normalizedScrollPosition = _scrollController.offset /
              _scrollController.position.maxScrollExtent;
          _scrollPosition = (2 * normalizedScrollPosition - 1);
        } else {
          setState(() {
            _scrollPosition = -1;
          });
        }
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // top bar
      appBar: AppBar(
        toolbarHeight: 70,
        flexibleSpace: const TopBar(),
      ),
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      // promotion section
                      Container(
                        margin: const EdgeInsets.only(top: 5),
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
                                    return Builder(
                                        builder: (BuildContext context) {
                                      return Container(
                                        color: Colors.grey.shade200,
                                        width: double.infinity,
                                        margin: const EdgeInsets.all(10),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.network(
                                            url,
                                            fit: BoxFit.fill,
                                            loadingBuilder: (context, child,
                                                loadingProgress) {
                                              if (loadingProgress == null) {
                                                return child;
                                              } else {
                                                return const SizedBox();
                                              }
                                            },
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
                                    count: BannerList.imageUrls.length,
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
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: OptionItemList
                                              .optionItemList[index].image,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                                OptionItemList
                                                    .optionItemList[index]
                                                    .title,
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    height: 1.2,
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ],
                                        );
                                },
                              ),
                            ),

                            // Custom bottom scrollbar
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 178, right: 178, bottom: 8),
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

                      // ads banner
                      Container(
                        color: Colors.grey.shade200,
                        height: 200,
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/home_icons%2Fads.png?alt=media&token=b64e15d8-fa1a-49da-9da8-c31edda5e880',
                            fit: BoxFit.scaleDown,
                            loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return const SizedBox();
                          }
                        }),
                      ),

                      // For new user
                      Container(
                        color: MyColors.white,
                        padding: const EdgeInsets.all(13),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'For New User',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: MyColors.headline,
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Text('Read'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                ...DisplayItemsList.forNewUser.map(
                                  (item) => Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(right: 7),
                                        width: 117,
                                        child: Image.network(
                                          item.imageUrl,
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                      Text(
                                        '${item.disCountPrice.toStringAsFixed(3)} đ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.hotPink,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        '${item.price.toStringAsFixed(3)} đ',
                                        style: const TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 117,
                                  child: Image.network(
                                    'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/home_icons%2Fnew_voucher.png?alt=media&token=5e40e3e3-c6f4-4de5-9bf9-270b708c29d3',
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      //padding
                      const SizedBox(
                        height: 10,
                      ),

                      // only 3K
                      Container(
                        color: MyColors.white,
                        padding: const EdgeInsets.all(13),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'From',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                        color: MyColors.headline),
                                    children: [
                                      TextSpan(
                                        text: ' 3K',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19,
                                          color: MyColors.hotPink,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 55,
                                  child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/home_icons%2Fchoice.png?alt=media&token=587dfc93-4aad-4f18-8b9d-f7c49d3d5fdf'),
                                ),
                                const Spacer(),
                                const Row(
                                  children: [
                                    Text('100% Freeship'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ...DisplayItemsList.from3k.map(
                                  (item) => Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(right: 7),
                                        width: 115,
                                        child: Image.network(
                                          item.imageUrl,
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                      Text(
                                        '${item.disCountPrice.toStringAsFixed(3)} đ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.hotPink,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        '${item.price.toStringAsFixed(3)} đ',
                                        style: const TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ), // only 3K

                PinnedHeaderSliver(
                  child: Container(
                    color: Colors.grey.shade100,
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      tabAlignment: TabAlignment.center,
                      labelPadding: const EdgeInsets.all(3),
                      dividerColor: Colors.transparent,
                      splashFactory: NoSplash.splashFactory,
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      indicator: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)),
                        color: MyColors.white,
                      ),
                      labelStyle: TextStyle(
                        color: MyColors.hotPink,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: MyColors.headline,
                      ),
                      tabs: const [
                        TabItem(
                            imageUrl: "lib/assets/icons_tab_bar/for you.png",
                            text: "For you"),
                        TabItem(
                            imageUrl: "lib/assets/icons_tab_bar/don't miss.png",
                            text: "Don't miss"),
                        TabItem(
                            imageUrl: "lib/assets/icons_tab_bar/xu.png",
                            text: 'Xu'),
                        TabItem(
                            imageUrl: "lib/assets/icons_tab_bar/new items.png",
                            text: 'New items'),
                      ],
                    ),
                  ),
                )
              ];
            },
            body: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                // for you
                Container(
                  padding: const EdgeInsets.only(top: 13),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.7, 1.0],
                      colors: [
                        MyColors.white,
                        Colors.grey.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: const ItemProductScreen(),
                ), // for you

                // don't miss
                Container(
                  padding: const EdgeInsets.only(top: 13),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.7, 1.0],
                      colors: [
                        MyColors.white,
                        Colors.grey.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: const ItemProductScreen(),
                ), // don't miss

                // xu
                Container(
                  padding: const EdgeInsets.only(top: 13),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.7, 1.0],
                      colors: [
                        MyColors.white,
                        Colors.grey.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: const ItemProductScreen(),
                ), // xu

                // new items
                Container(
                  padding: const EdgeInsets.only(top: 13),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.7, 1.0],
                      colors: [
                        MyColors.white,
                        Colors.grey.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: const ItemProductScreen(),
                ), // new items
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.close_rounded,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 80,
                  child: Image.asset('lib/assets/icons/freeship_btn.png'),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              color: Colors.black.withOpacity(0.7),
              padding: const EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset('lib/assets/icons/envelope.png'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'Sign in to get masive discount\nfor first order',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 253, 112, 88),
                          Color.fromARGB(255, 248, 58, 127),
                        ],
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
