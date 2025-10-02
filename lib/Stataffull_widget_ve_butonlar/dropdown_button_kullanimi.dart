import 'package:flutter/material.dart';

class DropdownButtonKullanimi extends StatefulWidget {
  const DropdownButtonKullanimi({super.key});

  @override
  State<DropdownButtonKullanimi> createState() =>
      _DropdownButtonKullanimiState();
}

class _DropdownButtonKullanimiState extends State<DropdownButtonKullanimi> {
  String? _secileSehir;
  List<String> _tumSehirler = [
    'Ankara',
    'Bursa',
    'İzmir',
    'Antalya',
    'Malatya',
    'Eskişehir',
    'Adıyaman',
    'Van'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text(
          'Şehir Seçiniz',
        ),
        iconSize: 42,
        iconEnabledColor: Colors.purple,
        underline: Container(
          height: 2,
          color: Colors.cyan,
        ),
        style: TextStyle(
            color: Colors.lime, fontWeight: FontWeight.bold, fontSize: 35),
        icon: Icon(Icons.arrow_drop_down_circle),
        /*items: [
          DropdownMenuItem(
            child: Text('Ankara Şehri'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('İstanbul Şehri'),
            value: 'İstanbul',
          ),
          DropdownMenuItem(
            child: Text('İzmir Şehri'),
            value: 'İzmir',
          ),
          DropdownMenuItem(
            child: Text('Antalya Şehri'),
            value: 'Antalya',
          ),
          DropdownMenuItem(
            child: Text('Malatya Şehri'),
            value: 'Malatya',
          ),
        ],*/
        items: _tumSehirler
            .map(
              (String oankiSehir) => DropdownMenuItem(
                child: Text(oankiSehir),
                value: oankiSehir,
              ),
            )
            .toList(),
        value: _secileSehir,
        onChanged: (String? yeni) {
          // yazmadığımızda kullanım dışı aklır dropdown
          setState(() {
            // değişen durumun ekrana da yansıması için setstate kullanılıyor- build methodunu tetikler
            print('Çalıştı $yeni');
            _secileSehir = yeni;
          });
        },
      ),
    );
  }
}
