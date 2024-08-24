import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazada_clone/utility/colors.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: MyColors.white,
            height: 70,
            width: double.infinity,
            child: Row(
              children: [
                // qr icon
                SvgPicture.asset(
                  'lib/assets/icons/qr_code.svg',
                  height: 23,
                  colorFilter: ColorFilter.mode(MyColors.icon, BlendMode.srcIn),
                ),

                // padding
                const SizedBox(
                  width: 5,
                ),

                // search section
                Expanded(
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.all(2),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          const Color.fromARGB(255, 254, 146, 16),
                          MyColors.hotPink,
                        ],
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: MyColors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Row(
                          children: [
                            // text pop mart
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  'popmart official',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: MyColors.icon,
                                  ),
                                ),
                              ),
                            ),

                            // camera icon
                            SvgPicture.asset(
                              'lib/assets/icons/front-camera.svg',
                              height: 23,
                              colorFilter: ColorFilter.mode(
                                  MyColors.icon, BlendMode.srcIn),
                            ),

                            // padding
                            const SizedBox(
                              width: 10,
                            ),

                            // search button
                            Container(
                              alignment: Alignment.center,
                              height: double.infinity,
                              width: 55,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    const Color.fromARGB(255, 254, 146, 16),
                                    MyColors.hotPink,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'Search',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // wallet icon
                SvgPicture.asset(
                  'lib/assets/icons/wallet.svg',
                  height: 25,
                  colorFilter: ColorFilter.mode(MyColors.icon, BlendMode.srcIn),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
