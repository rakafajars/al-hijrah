import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/theme/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class HomeKajian extends StatelessWidget {
  const HomeKajian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Padding(
        padding: const EdgeInsets.only(
          right: 16,
        ),
        child: Container(
          height: sy(100),
          width: sy(185),
          padding: const EdgeInsets.only(
            left: 16,
          ),
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
              Container(
                height: sy(20),
                width: sy(80),
                decoration: const BoxDecoration(
                  color: Color(0xFFDEEAF0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Kajian Fiqih',
                  style: googlePoppinsMedium.copyWith(
                    fontSize: 8,
                    color: Color(0xFF87A9BB),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Persiapan Bulan\nRamadhan',
                style: googlePoppinsMedium.copyWith(
                  fontSize: 14,
                  color: Color(0xFF2B3247),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '12 April 2021',
                style: googlePoppinsRegular.copyWith(
                  fontSize: 10,
                  color: const Color(0xFF2B3247),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}