import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/theme/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class ItemSurat extends StatelessWidget {
  const ItemSurat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return SizedBox(
          height: sy(52),
          width: double.infinity,
          child: ListTile(
            /// Leading Untuk Number
            leading: Container(
              alignment: Alignment.center,
              width: sy(36),
              height: sy(36),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ThemeColor.greyColor1,
              ),
              child: Text(
                '1',
                style: googlePoppinsMedium.copyWith(
                  fontSize: 20,
                  color: ThemeColor.blueColor,
                ),
              ),
            ),
            title: Text(
              "Al-Faatiha",
              style: googlePoppinsMedium.copyWith(
                fontSize: 16,
                color: ThemeColor.blackColor1,
                letterSpacing: 0.3,
              ),
            ),
            subtitle: Text(
              'Pembukaan | 7 Ayat',
              style: googlePoppinsRegular.copyWith(
                letterSpacing: 0.3,
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(
                right: 24,
              ),
              child: Text(
                "الفاتحة",
                style: arabicFont.copyWith(
                  fontSize: 30,
                ),
                textAlign: TextAlign.right,
              ),
            ),

          ),
        );
      },
    );
  }
}
