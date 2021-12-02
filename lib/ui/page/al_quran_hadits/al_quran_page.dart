import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/ui/page/al_quran_hadits/widget/button_after_read.dart';
import 'package:al_hijrah/ui/page/al_quran_hadits/widget/item_surat.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class AlQuranPage extends StatelessWidget {
  const AlQuranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView.builder(
                itemCount: 33,
                shrinkWrap: true,
                padding: EdgeInsets.only(bottom: sy(90)),
                itemBuilder: (context, int index) {
                  return Column(
                    children: const [
                      ItemSurat(),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 76,
                        ),
                        child: Divider(
                          thickness: 1,
                          color: ThemeColor.greyColor,
                        ),
                      ),
                    ],
                  );
                },
              ),

              /// BUTTON AFTER READ
              ButtonAfterRead(),
            ],
          ),
        );
      },
    );
  }
}
