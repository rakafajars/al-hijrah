import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/theme/theme_text.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:flutter/material.dart';


class HomeNgaji extends StatelessWidget {
  const HomeNgaji({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Padding(
          padding: const EdgeInsets.only(
            right: 16,
          ),
          child: Container(
            height: sy(100),
            width: sy(225),
            decoration: const BoxDecoration(
              color: ThemeColor.whiteColor,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.image,
                    size: sy(35),
                  ),
                  minLeadingWidth: sy(2),
                  title: Text(
                    'Belajar Tajwid Bacth 1',
                    style: googlePoppinsMedium.copyWith(
                      fontSize: 14,
                      color: ThemeColor.blackColor2,
                      letterSpacing: 0.3,
                    ),
                  ),
                  subtitle: Text(
                    '11 - 20 Desember 2021',
                    style: googlePoppinsRegular.copyWith(
                      fontSize: 10,
                      letterSpacing: 0.3,
                      color: ThemeColor.blackColor2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 24,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: sy(65),
                            child: Stack(
                              children: [
                                Container(
                                  height: sy(24),
                                  width: sy(24),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red),
                                ),
                                Positioned(
                                  left: sy(20),
                                  child: Container(
                                    height: sy(24),
                                    width: sy(24),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: sy(40),
                                  child: Container(
                                    height: sy(24),
                                    width: sy(24),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '+ 20 Anggota',
                            style: googlePoppinsRegular.copyWith(
                              fontSize: 10,
                              letterSpacing: 0.3,
                              color: ThemeColor.blackColor2,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        size: sy(16),
                        color: ThemeColor.greyColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}