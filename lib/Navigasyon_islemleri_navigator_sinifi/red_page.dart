import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    int _randomsayi = 0;
    return PopScope(
      //
      canPop: false,
      // bu say8ede kullanıcı bizim istediğimizi yapmadan sayfadan çıkamıyor
      onPopInvokedWithResult: (dipPop, result) async {
        if (dipPop) {
          return;
        }
        final result = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              "Çıkmak İstediğinizden Emin Misiniz?",
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text(
                  "Evet",
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text(
                  "İptal",
                ),
              ),
            ],
          ),
        );
        if (result == true) {
          // alert dialogdan ture gelirse yönlendirdiğimiz sayfaya gitmesini sağlar
          Navigator.of(context).popUntil(
            (route) => route.isFirst,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Red Page"),
          //automaticallyImplyLeading: false, // otomatik tanımlı geri dönme ikonu
        ),
        backgroundColor: Colors.white,
        body: PopScope(
          canPop: false,
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Kırmızı Sayfa",
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _randomsayi = Random().nextInt(100);
                      print("Butona basıldı $_randomsayi");
                      Navigator.of(context).pop(_randomsayi);
                    },
                    child: Text(
                      "Geri Dön",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (Navigator.canPop(context)) {
                        print("Pop yapılabilir");
                      }
                      else print("Pop Yapılamaz");
                    },
                    child: Text(
                      "Can Pop Kullanımı",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/orangePage2');
                    },
                    child: Text(
                      "Goto Orange Page",
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
