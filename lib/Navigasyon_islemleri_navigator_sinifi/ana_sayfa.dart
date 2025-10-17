import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'blue_page.dart';
import 'red_page.dart';
import 'green_page.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Navigasyon işlemleri',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push<int>(
                  MaterialPageRoute(
                    // android uyumlu sayfa a��l��� oluyor
                    builder: (context) =>
                        RedPage(), // sayfa ge�i�i yapmam�z� sa�l�yor
                  ),
                )
                    .then(
                      (int? value) {
                    debugPrint("Gelen Sayı: $value");
                  },
                );
              },
              child: Text(
                "Android Kırmızı Sayfa Butonu",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                // await kullan�yorsak async kullanmam�z gerekiyor
                int? _gelenSayi = await Navigator.of(context).push(
                  CupertinoPageRoute(
                    // ios uyumlu sayfa a��l��� oluyor
                    builder: (context) =>
                        RedPage(), // sayfa ge�i�i yapmam�z� sa�l�yor
                  ),
                );
                debugPrint("Gelen sayi $_gelenSayi");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text(
                "IOS k�rm�z� sayfa butonu",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push<int>(
                  MaterialPageRoute(
                    // android uyumlu sayfa a��l��� oluyor
                    builder: (context) =>
                        GreenPage(), // sayfa ge�i�i yapmam�z� sa�l�yor
                  ),
                )
                    .then(
                      (int? value) {
                    debugPrint("Gelen Say�: $value");
                  },
                );
              },
              child: Text(
                "Android Ye�il Sayfa Butonu",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .maybePop(); // e�er kendinden �nce bir sayfa varsa pop yapar yoksa yapmaz.
              },
              child: Text(
                "Maybe Pop Kullan�m�",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  print("Pop yap�labilir");
                } else
                  print("Pop Yap�lamaz");
              },
              child: Text(
                "Can Pop Kullan�m�",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BluePage(),
                ));
              },
              child: Text("Mavi Sayfa"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  // PushReplacement stack i�erisinde yerini de�i�mesini sa�lar
                  // �r: llogin yapt�ktan sonra uygulama ba�lang�� sayfas�n�n ana ekran olmas� (��k�� yapana kadar)
                  MaterialPageRoute(
                    builder: (context) => BluePage(),
                  ),
                );
              },
              child: Text("Push Replacament Sayfası"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.of(context).pushNamed('redPage'); ya da direkt
                Navigator.pushNamed(context, '/orange_page');
              },
              child: Text("PushNamed"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),ElevatedButton(
              onPressed: () {
                //Navigator.of(context).pushNamed('redPage'); ya da direkt
                Navigator.pushNamed(context, '/yellow_page');
              },
              child: Text("Yellow Page PushNamed"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                  Navigator.pushNamed(context, '/ogrenci_listesi',arguments: 60);
              },
              child: Text("Liste Oluştur"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
