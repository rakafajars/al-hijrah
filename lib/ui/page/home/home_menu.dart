import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/theme/theme_text.dart';
import 'package:al_hijrah/ui/page/al_quran_hadits/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:relative_scale/relative_scale.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: sy(116),
          margin: const EdgeInsets.only(
            top: 24,
          ),
          width: double.infinity,
          child: ListView(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              /// Menu Button
              menuButton(
                image: 'image/quran.svg',
                titleName: "Al-Qur'an &\nHadits",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomTabBar(),
                    ),
                  );
                },
              ),
              menuButton(
                image: 'image/praying.svg',
                titleName: "Jadwal\nSholat",
                onTap: () {},
              ),
              menuButton(
                image: 'image/doa.svg',
                titleName: "Doa-Doa",
                onTap: () {},
              ),
              menuButton(
                image: 'image/masjid.svg',
                titleName: "Masjid\nTerdekat",
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }

  Widget menuButton({
    required String image,
    required String titleName,
    required VoidCallback onTap,
  }) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Padding(
          padding: const EdgeInsets.only(
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: onTap,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: ThemeColor.whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      width: sy(72),
                      height: sy(72),
                    ),
                    SvgPicture.asset(
                      image,
                      width: sy(42),
                      height: sy(42),
                    ),
                  ],
                ),
              ),
              // ),
              Container(
                padding: const EdgeInsets.only(
                  top: 4,
                ),
                height: sy(32),
                child: Text(
                  titleName,
                  style: googlePoppinsRegular.copyWith(
                    fontSize: 10,
                    color: ThemeColor.blackColor2,
                    letterSpacing: 0.3,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
