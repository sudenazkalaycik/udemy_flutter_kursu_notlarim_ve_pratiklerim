import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

// böyle bir yapı kullanıyorsak bizim verilerimiz bir yerden illaki çekiliyordur, elle veri girilmiyordur
class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});

  // burasi bizim veri kaynağımız
  List<Ogrenci> tumOgrenciler = List.generate(
    200,
    (index) => Ogrenci(
      index + 1,
      'Öğrenci Adı: ${index + 1}',
      'Öğrenci Soyadı: ${index + 1}',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Öğrenci Listesi",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: buildListViewseperated(),
    );
  }

  ListView buildListViewseperated() {
    return ListView.separated(
      // ListView.builder performansli liste yapısı - ekranda sadece görünen kısmı oluşturur.
      //ListView.separated yapısı .builder ile aynıdır sadece bize divider kullanmak için alan açar.
      itemBuilder: (BuildContext contect, int index) {
        var oankiOgrenci = tumOgrenciler[index];
        return Card(
          color: index % 2 == 0 ? Color(0xfffff0) : Colors.cyan,
          child: ListTile(
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.lime;
              } else {
                EasyLoading.instance.backgroundColor = Colors.pink;
              }
              print("Karta tıklandı. Tıklanan Kart ID ${index + 1}");
              EasyLoading.showToast(
                  // easyloading i burada tetikliyoruz
                  'Eleman tıklandı',
                  duration: Duration(
                    seconds: 5,
                  ),
                  dismissOnTap: true,
                  toastPosition: EasyLoadingToastPosition.bottom);
            },
            onLongPress: () {
              _alertDialogIslermleri(contect, oankiOgrenci);
            },
            title: Text(oankiOgrenci.isim),
            subtitle: Text(oankiOgrenci.soyisim),
            leading: CircleAvatar(
              child: Text(
                oankiOgrenci.id.toString(),
              ),
            ),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
      separatorBuilder: (context, index) {
        var yeniIndex = index + 1;
        if (yeniIndex % 4 == 0) {
          return Divider(
            color: Colors.black,
            height: 5,
            thickness: 3,
          );
        }
        return Container(
          child: null,
        );
      },
    );
  }

  // pop-up oluşturma
  void _alertDialogIslermleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
      barrierDismissible: false, // bura false olduğunda herhangibir yere basılarak pop-up kapatılamıyor.
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text(secilen.toString()),
          content: SingleChildScrollView(
            child: ListBody(children: [
              Text("Sudenaz" * 200),
            ]),
          ),
          actions: [
            TextButton(
              onPressed: () {
                //kapat a basıldığında pop-up kapanacak
                Navigator.pop(context);
              },
              child: Text("KAPAT"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("TAMAM"),
            ),
          ],
        );
      },
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map(
            (Ogrenci ogr) => ListTile(
              title: Text(ogr.isim),
              subtitle: Text(ogr.soyisim),
              leading: CircleAvatar(
                child: Text(ogr.id.toString()),
              ),
            ),
          )
          .toList(),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
  @override
  String toString() {
    // TODO: implement toString
    return 'isim: $isim, soyisim $soyisim, id $id ';
  }
}

// final değer bir kez değer aldıktan sonra değiştirilemez.

// renk kodu ile renklendirme ->Color(0xfbf8f0) şeklinde
