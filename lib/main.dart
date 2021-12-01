import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/theme/theme_text.dart';
import 'package:al_hijrah/ui/page/home/home_header.dart';
import 'package:al_hijrah/ui/page/home/home_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relative_scale/relative_scale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Starter Pack',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          backgroundColor: ThemeColor.greyColor1,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    /// BackGround
                    const HomeHeader(),
                    Positioned(
                      bottom: sy(105),
                      left: sy(145),
                      child: Container(
                        height: sy(220),
                        width: sy(220),
                        child: Image.asset(
                          'image/segitiga.png',
                          color: ThemeColor.whiteColor,
                        ),
                      ),
                    ),
                    Positioned(
                      top: sy(165),
                      right: sy(220),
                      child: Container(
                        height: sy(117),
                        width: sy(113),
                        child: Image.asset(
                          'image/lingkaran.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                const HomeMenu(),
              ],
            ),
          ),
        );
      },
    );
  }
}
