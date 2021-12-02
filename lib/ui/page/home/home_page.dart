import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/theme/theme_text.dart';
import 'package:al_hijrah/ui/page/home/home_header.dart';
import 'package:al_hijrah/ui/page/home/home_kajian.dart';
import 'package:al_hijrah/ui/page/home/home_menu.dart';
import 'package:al_hijrah/ui/page/home/home_ngaji.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          backgroundColor: ThemeColor.greyColor1,
          body: SingleChildScrollView(
            padding: const EdgeInsets.only(
              bottom: 16,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    /// BackGround
                    const HomeHeader(),
                    Positioned(
                      bottom: sy(105),
                      left: sy(145),
                      child: Container(
                        height: sy(220),
                        width: sy(220),
                        child: Image.asset(
                          'image/segitiga.png',
                          color: ThemeColor.whiteColor,
                        ),
                      ),
                    ),
                    Positioned(
                      top: sy(165),
                      right: sy(220),
                      child: Container(
                        height: sy(117),
                        width: sy(113),
                        child: Image.asset(
                          'image/lingkaran.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                const HomeMenu(),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 16,
                      ),
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      height: sy(27),
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Group Ngaji',
                        style: googlePoppinsMedium.copyWith(
                          fontSize: 18,
                          color: ThemeColor.blackColor2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sy(100),
                      width: double.infinity,
                      child: ListView(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          10,
                              (index) => const HomeNgaji(),
                        ),
                      ),
                    ),
                  ],
                ),

                /// Jadwal Kajian
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 16,
                      ),
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      height: sy(27),
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Jadwal Kajian',
                        style: googlePoppinsMedium.copyWith(
                          fontSize: 18,
                          color: ThemeColor.blackColor2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sy(100),
                      width: double.infinity,
                      child: ListView(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          10,
                              (index) => const HomeKajian(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
