import 'package:flutter/material.dart';
import 'package:pratikler_ve_notlarim/Stataffull_widget_ve_butonlar/dropdown_button_kullanimi.dart';
import 'package:pratikler_ve_notlarim/Stataffull_widget_ve_butonlar/popupmenu_kullanimi.dart';
import 'image_widgets.dart';
import 'my_counter_page.dart';
import 'temel_buton_turleri.dart';

void main() {
  debugPrint('Main fonksiyonu çalıştı');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('MaterialApp widget çalıştı');
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.cyan),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.purpleAccent,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(
            'Image Örnekleri',
          ),
          actions: [
            PopupmenuKullanimi(),
          ], // appbarda da popup menu bu şekilde kullanılabilir
        ),
        body: PopupmenuKullanimi(),
      ),
    );
  }
}

/*
*  ListView( ),// kaydırılabilrilik ekliyor
  */
