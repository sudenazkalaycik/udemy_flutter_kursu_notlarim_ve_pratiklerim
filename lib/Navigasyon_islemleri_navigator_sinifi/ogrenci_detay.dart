import 'package:flutter/material.dart';
import 'ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;

  const OgrenciDetay({required this.secilenOgrenci, super.key});

  @override
  Widget build(BuildContext context) {
    var secilen = ModalRoute.of(context)!.settings.arguments as Ogrenci;
    print("Seçilen Öğrenci... ${secilen.isim}");
    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Detay'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Öğrenci id: ${secilenOgrenci.id.toString()}"),
            Text("Öğrenci ismi: ${secilenOgrenci.isim}"),
            Text("Öğrenci soyismi: ${secilenOgrenci.soyisim}")
          ],
        ),
      ),
    );
  }
}
