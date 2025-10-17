import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({super.key});

  @override
  Widget build(BuildContext context) {
    int elemanSayisi = ModalRoute.of(context)?.settings.arguments as int;
    List<Ogrenci> tumOgrencilerinListesi = List.generate(
      elemanSayisi,
      (index) => Ogrenci(
        index + 1,
        "İsim: ${index + 1} ",
        "Soyisim: ${index + 1} ",
      ),
    );
    print("Eleman Sayısı: $elemanSayisi");
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Listesi"),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              var secilen = tumOgrencilerinListesi[index];
              Navigator.pushNamed(context, '/ogrenci_detay',
                  arguments: secilen);
            },
            leading: CircleAvatar(
              child: Text(
                tumOgrencilerinListesi[index].id.toString(),
              ),
            ),
            title: Text(tumOgrencilerinListesi[index].isim),
            subtitle: Text(tumOgrencilerinListesi[index].soyisim),
          );
        },
        itemCount: elemanSayisi, // itemBuilder ı sınırlandırmak için gerekli
      ),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
