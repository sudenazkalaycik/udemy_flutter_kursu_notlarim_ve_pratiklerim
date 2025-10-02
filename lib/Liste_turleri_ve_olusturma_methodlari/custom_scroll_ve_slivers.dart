import 'package:flutter/material.dart';
import 'dart:math'
    as matematik; //math kütüphanesini matematik yazarak çağır demek bu

class CollapsableToolbarOrnek extends StatelessWidget {
  const CollapsableToolbarOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.brown.shade400,
          // title:const Text("Sliver App Bar",),
          expandedHeight: 300,
          floating: true,
          // bar kapalıyken, aşağı doğru çekmeye bağladığımız andan itibaren sliver bar açılmaya başlayacak, false olursa son elemandan hemen sonra açılacak
          //snap: true,
          // kullanıcı ekranı aşağı çektiği an bar tamamen ortya çıkacak (süreç halinde değil direk bar düşüyor)
          pinned: true,
          // ekran kaydırıldığında bar küçülse dahi yazı daima orada kalıyor
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Sliver App Bar",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            background: Image.asset(
              "assets/images/img.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ),
          ),
        ),

        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              dinamikElemanUretenFonksiyon,
              childCount: 10,
            ),
          ),
        ),
        // eğer pading vermek istersem SliverPadding kullanmam lazım.

        // dinamik elemanların kaç satırda kaç eleman olacağını söylediğimiz grid türü
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          delegate: SliverChildBuilderDelegate(dinamikElemanUretenFonksiyon,
              childCount: 6),
        ),
        // sabit elemanların kaç satırda kaç eleman olacağını söylediğimiz grid türü
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          delegate: SliverChildListDelegate(
            sabitListeElemanlari(),
          ),
        ),
        // sabit elemanların kaç satırda max genişlikte olacağını söylediğimiz grid türü
        SliverGrid(
          delegate: SliverChildBuilderDelegate(dinamikElemanUretenFonksiyon,
              childCount: 6),
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
        ),
        SliverGrid.count(
          crossAxisCount: 20,
          children: sabitListeElemanlari(),
        ),

        SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
            itemExtent: 500),
        // containera verilen yükseklik değerini ezer

        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
            dinamikElemanUretenFonksiyon,
            childCount: 10, // bu verilmezse sonsuz eleman oluşturur.
          ),
          itemExtent: 50,
        )
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        color: Colors.amberAccent,
        height: 150,
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 6",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        color: Colors.green,
        height: 150,
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        color: Colors.pink,
        height: 150,
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 2",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        color: Colors.blue,
        height: 150,
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 3",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        color: Colors.deepOrangeAccent,
        height: 150,
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 4",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        color: Colors.purple,
        height: 150,
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        color: Colors.amberAccent,
        height: 150,
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 6",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        color: Colors.green,
        height: 150,
      ),
    ];
  }

  Widget dinamikElemanUretenFonksiyon(builderContext, int index) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı ${index + 1}",
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
      ),
      color: rastgeleRenkOlusturucu(),
      height: 100,
    );
  }

  Color? rastgeleRenkOlusturucu() {
    // random renk üretir
    return Color.fromARGB(
      matematik.Random().nextInt(255),
      //matematik kütüphanesi random bir değer üretecek bu sayede
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
    );
    // her birinin random değerleri ile oluşan rgb değerleri bir renk tonu oluturacak.
  }
}
