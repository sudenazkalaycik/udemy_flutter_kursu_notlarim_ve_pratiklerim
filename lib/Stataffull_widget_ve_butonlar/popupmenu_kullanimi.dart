import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  const PopupmenuKullanimi({super.key});

  @override
  State<PopupmenuKullanimi> createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilenSehir = '';
  List<String> _renkler = [
    'mavi',
    'sarı',
    'yeşil',
    'kırmızı',
    'mor',
    'siyah',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        onSelected: (String sehir) {
          setState(() {});
          print('Şehir seçildi $sehir');
          _secilenSehir = sehir;
          // bunu bir değişkende sakladığımız gibi sayfa geçisi yapıalcaksa da burda yapılmalı
        },
        //icon: Icon(Icons.account_balance_rounded),
        // child:Text(_secilenSehir), // bu şekilde yaprsak + set state ile kullanırsak - dropdowndan bir farkı kalmıyor
        itemBuilder: (
          BuildContext context,
        ) {
          /*return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text('Ankara'),
              value: 'Ankara',
            ),
            PopupMenuItem(
              child: Text('Malatya'),
              value: 'Malatya',
            ),
            PopupMenuItem(
              child: Text('Antalya'),
              value: 'Antalya',
            ),
          ];*/
          return _renkler
              .map(
                // map ile istediğimiz yapıya çevirebiliriz
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
