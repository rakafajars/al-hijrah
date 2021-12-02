import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/theme/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:relative_scale/relative_scale.dart';

class MenuButton extends StatelessWidget {
  final String? image;
  final String? titleName;
  final VoidCallback? onTap;

  const MenuButton({
    Key? key,
    required this.image,
    required this.titleName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      image ?? "-",
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
                  titleName ?? "-",
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
