import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pratikler_ve_notlarim/Navigasyon_islemleri_navigator_sinifi/orange_page.dart';
import 'package:pratikler_ve_notlarim/Navigasyon_islemleri_navigator_sinifi/yellow_page.dart';
import 'ana_sayfa.dart';
import 'ogrenci_listesi.dart';
import 'ogrenci_detay.dart';

class RouteGenerator {

  // bu fonksiyon ile kod tekrarından kurtulduk sadece istenilen sayfayı yazarak bunu çalıştırabiliriz
  static Route<dynamic> _rotaOlustur(Widget gidilecekWidget,RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => gidilecekWidget,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          settings: settings,
          builder: (context) => gidilecekWidget);
    } else {
      return CupertinoPageRoute(builder: (context) => gidilecekWidget);
    }
  }

  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      // ilk case
      case '/':
        return _rotaOlustur(AnaSayfa(), settings);
        // 2. case
      case '/orange_page':
        return _rotaOlustur(OrangePage(),settings);
      case '/yellow_page':
        return _rotaOlustur(YellowPage(),settings);
      case '/ogrenci_listesi':
        return _rotaOlustur(OgrenciListesi(),settings);
      case '/ogrenci_detay':
      var parametredekiOgrenci = settings.arguments as Ogrenci;
        return _rotaOlustur(OgrenciDetay(secilenOgrenci: parametredekiOgrenci),settings);



      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text("Hata: 404"),
            ),
            body: Center(
              child: Text(
                "Sayfa Bulunamadı",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
        );
    }
  }
}
