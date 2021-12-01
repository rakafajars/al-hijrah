import 'package:al_hijrah/theme/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomePage extends StatelessWidget {
  final Scaffold scaffold;
  final Color statusBarColor;
  final Brightness statusBarIconBrightness;
  final double? Function(double)? sy;

  const CustomePage({
  required  this.scaffold,
    this.statusBarColor = ThemeColor.primaryColor,
    this.statusBarIconBrightness = Brightness.light,
    this.sy,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        statusBarIconBrightness: statusBarIconBrightness,
      ),
      child: scaffold,
    );
  }
}