import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:pratikler_ve_notlarim/Navigasyon_islemleri_navigator_sinifi/route_generator.dart';
import 'blue_page.dart';
import 'orange_page.dart';
import 'red_page.dart';
import 'route_generator.dart' show RouteGenerator;
import 'yellow_page.dart';
import 'green_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // asıl yapımın çalıştığı yer
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( // !!!!!! sorun yaşarsan constu kaldır uyarı almamak için ekledim
      title: 'Navigasyon İşlemleri',
      //home: AnaSayfa(), //rotalar map inde tanımladığımız için burayı yoruma aldık
      /*routes: {
        // uygulamamız da kullanacağımız tüm rotaları burada tanımlayabiliriz.
        '/redPage': (context) => RedPage(),
        '/': (context) => AnaSayfa(),
        // deafult olarak pageroute ile sarmalamış oldu.
        '/orangePage': (context) => OrangePage(),
      },*/
      // önce sayfa route da sonra onGenerateRoute da en son da onuknown da aranır.
      onGenerateRoute: RouteGenerator.routeGenerator,

      // Eğer tanımlanmayan rota varsa bu sayfaya yönlendirilir kullanıcı bunu da onUnknownRout ile yaparız.
      /*onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text("Error"),
          ),
          body: Center(
            child: Text(
              "Hata: 404",
              style: TextStyle(
                fontSize: 60,
              ),
            ),
          ),
        ),
      ),*/
    );
  }
}

