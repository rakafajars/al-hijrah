import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/theme/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relative_scale/relative_scale.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        /// Background
        return Container(
          height: sy(250),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: ThemeColor.blueColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            ),
          ),
          /// Tumpukan Dalam background
          child: SafeArea(
            child: Container(
              width: double.infinity,
              height: sy(250),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Al-Hijrah & Icon
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Al-Hijrah',
                          style: GoogleFonts.lora(
                            color: ThemeColor.whiteColor,
                            letterSpacing: 0.3,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(
                          Icons.add_alert,
                          color: ThemeColor.whiteColor,
                        ),
                      ],
                    ),
                  ),
                  /// Widget Dzuhur & Waktu
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dzuhur 11.57',
                          style: GoogleFonts.poppins(
                            color: ThemeColor.orangeColor,
                            letterSpacing: 0.3,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '10 menit lagi',
                          style: googlePoppinsMedium.copyWith(
                            color: ThemeColor.whiteColor,
                            letterSpacing: 0.3,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  /// Widget yang paling bawah
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: ThemeColor.whiteColor,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kota Bandung',
                                  style: googlePoppinsMedium.copyWith(
                                    color: ThemeColor.orangeColor1,
                                    letterSpacing: 0.3,
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'Cilengkrang',
                                  style: googlePoppinsRegular.copyWith(
                                    color: ThemeColor.whiteColor,
                                    letterSpacing: 0.3,
                                    fontSize: 8,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.refresh,
                                color: ThemeColor.whiteColor,
                                size: 10,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.date_range_outlined,
                              color: ThemeColor.whiteColor,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '13 Sya’ban 1442 H',
                                  style: googlePoppinsMedium.copyWith(
                                    color: ThemeColor.orangeColor1,
                                    letterSpacing: 0.3,
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'Minggu, 04 Apr 2021',
                                  style: googlePoppinsRegular.copyWith(
                                    color: ThemeColor.whiteColor,
                                    letterSpacing: 0.3,
                                    fontSize: 8,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
