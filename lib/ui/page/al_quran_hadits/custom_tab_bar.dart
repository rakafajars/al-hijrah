import 'package:al_hijrah/theme/theme_color.dart';
import 'package:al_hijrah/theme/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        /// TAB BAR PADA 3
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: ThemeColor.whiteColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                sy(175),
              ),
              child: Column(
                children: [
                  /// AppBar
                  AppBar(
                    backgroundColor: ThemeColor.whiteColor,
                    elevation: 0.0,
                    iconTheme: const IconThemeData(
                      color: ThemeColor.blackColor,
                      size: 24,
                    ),
                    actions: <Widget>[
                      IconButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: ThemeColor.blackColor1,
                          size: 24,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 21,
                      right: 19,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Bacaan Pilihan',
                          style: googlePoppinsMedium.copyWith(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Lihat Semua',
                          style: googlePoppinsMedium.copyWith(
                            fontSize: 10,
                            color: ThemeColor.blueColor2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: sy(45),
                    width: double.infinity,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(
                        left: 21,
                      ),
                      itemCount: listModelBacaanPilihan.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            right: 24,
                          ),
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: sy(65),
                                width: sy(142),
                                decoration: BoxDecoration(
                                  color: ThemeColor.blueColor,
                                  borderRadius: BorderRadius.circular(
                                    sy(16),
                                  ),
                                ),
                                child: Text(
                                  listModelBacaanPilihan[index].nameBacaan,
                                  style: googlePoppinsMedium.copyWith(
                                    fontSize: 14,
                                    color: ThemeColor.whiteColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: sy(15),
                                left: sy(-20),
                                child: Container(
                                  height: sy(53),
                                  width: sy(53),
                                  child: Image.asset(
                                    'image/segitiga.png',
                                    color: ThemeColor.whiteColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: sy(10),
                                right: sy(-20),
                                child: Container(
                                  height: sy(86),
                                  width: sy(86),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(.1),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: sy(10),
                                right: sy(-20),
                                child: Container(
                                  height: sy(86),
                                  width: sy(86),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(.1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),


                  /// TabBar
                  Column(
                    children: [
                      TabBar(
                        labelStyle: googlePoppinsRegular.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: ThemeColor.blackColor1,
                        ),
                        labelColor: ThemeColor.blackColor1,
                        unselectedLabelColor:
                            ThemeColor.blackColor1.withOpacity(0.5),
                        unselectedLabelStyle: googlePoppinsRegular.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: ThemeColor.blackColor1,
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        // isScrollable: true,
                        indicatorWeight: 2.0,
                        indicatorColor: ThemeColor.blackColor1,
                        tabs: const <Widget>[
                          Tab(
                            text: 'Surat',
                          ),
                          Tab(
                            text: 'Hadits',
                          ),
                          Tab(
                            text: 'Bookmark',
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ModelBacaanPilihan {
  final int id;
  final String nameBacaan;

  ModelBacaanPilihan({
    required this.id,
    required this.nameBacaan,
  });
}

List<ModelBacaanPilihan> listModelBacaanPilihan = [
  ModelBacaanPilihan(
    id: 1,
    nameBacaan: "Kumpulan Do'a",
  ),
  ModelBacaanPilihan(
    id: 2,
    nameBacaan: "Ayat Pilihan",
  ),
  ModelBacaanPilihan(
    id: 3,
    nameBacaan: "Juz Amma",
  ),
  ModelBacaanPilihan(
    id: 4,
    nameBacaan: "Kumpulan Hadits",
  ),
];
