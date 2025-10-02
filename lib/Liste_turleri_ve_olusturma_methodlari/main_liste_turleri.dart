import 'package:flutter/material.dart';
import 'package:pratikler_ve_notlarim/Liste_turleri_ve_olusturma_methodlari/card_listtile.dart';
import 'package:pratikler_ve_notlarim/Liste_turleri_ve_olusturma_methodlari/custom_scroll_ve_slivers.dart';
import 'package:pratikler_ve_notlarim/Liste_turleri_ve_olusturma_methodlari/grid_view_kullanimi.dart';
import 'package:pratikler_ve_notlarim/Liste_turleri_ve_olusturma_methodlari/listview_kullanimi.dart';
import 'package:pratikler_ve_notlarim/Liste_turleri_ve_olusturma_methodlari/listview_layout_problemleri.dart';
import 'package:pratikler_ve_notlarim/Stataffull_widget_ve_butonlar/main.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


void main() {
  runApp(MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
  // .. yapısı her defasında EasyLoading.instance....... şeklinde tekrara düşmemek için kullanılır
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 80.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.pink
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.shade500
    ..userInteractions = true
    ..dismissOnTap = true;

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.cyan,
        appBarTheme: const AppBarThemeData(
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      title: 'MaterialApp',
      home: CollapsableToolbarOrnek(),
      builder: EasyLoading.init(),
    );
  }
}
