import 'package:flutter/material.dart';
import 'package:lazada_clone/utility/colors.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            // qr icon
            Image.network(
              'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/home_icons%2Fqr_code.png?alt=media&token=b1e4c423-3fe8-490e-9ba0-f8191770f0cd',
              height: 20,
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
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.centerLeft,
                                width: double.infinity,
                                height: double.infinity,
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
                          ),
                        ),

                        // camera icon
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/home_icons%2Fcamera.png?alt=media&token=60e970e5-1566-40a4-82c6-d0d20ca392c0',
                          height: 20,
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
            Image.network(
              'https://firebasestorage.googleapis.com/v0/b/lazada-clone-f3640.appspot.com/o/home_icons%2Fwallet.png?alt=media&token=55a0a375-980f-48cc-a7aa-23a8f2653334',
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
