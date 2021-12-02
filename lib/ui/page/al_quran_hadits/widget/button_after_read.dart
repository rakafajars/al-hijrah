import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/theme/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';


class ButtonAfterRead extends StatelessWidget {
  const ButtonAfterRead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
        builder: (context, height, width, sy, sx) {
        return  Container(
            height: sy(84),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            padding: const EdgeInsets.only(
              top: 25,
              left: 25,
              right: 20,
              bottom: 25,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bookmark,
                        size: sy(24),
                        color: ThemeColor.orangeColor,
                      ),
                      SizedBox(
                        width: sy(8),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Terakhir dibaca',
                            style: googlePoppinsRegular.copyWith(
                              fontSize: 10,
                              color: ThemeColor.blackColor1,
                            ),
                          ),
                          Text(
                            'Al-Qamar Ayat 28',
                            style: googlePoppinsMedium.copyWith(
                              fontSize: 14,
                              color: ThemeColor.blackColor1,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Lanjut Baca',
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: ThemeColor.blueColor,
                      textStyle: googlePoppinsMedium.copyWith(
                        color: ThemeColor.whiteColor,
                        letterSpacing: 0.3,
                        fontSize: 14,
                      )),
                ),
              ],
            ),
          );

        }
    );
  }
}