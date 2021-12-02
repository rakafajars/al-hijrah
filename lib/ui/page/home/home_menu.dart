import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/theme/theme_text.dart';
import 'package:al_hijrah/ui/page/al_quran_hadits/custom_tab_bar.dart';
import 'package:al_hijrah/ui/page/home/widget/menu_button.dart';
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
              MenuButton(
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
              MenuButton(
                image: 'image/praying.svg',
                titleName: "Jadwal\nSholat",
                onTap: () {},
              ),
              MenuButton(
                image: 'image/doa.svg',
                titleName: "Doa-Doa",
                onTap: () {},
              ),
              MenuButton(
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
}
