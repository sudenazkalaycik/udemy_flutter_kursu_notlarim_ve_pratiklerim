import 'package:flutter/material.dart';

class ListviewLayoutProblemleri extends StatelessWidget {
  const ListviewLayoutProblemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView Layout Problemleri",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: 200,
        // yatay scroll da boyutu sınırlandırmak için uzunluk veririz
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.yellow,
            width: 5,
          ),
        ),
        child: rowIcindeListe(),
      ),
    );
  }

  Row rowIcindeListe() {
    return Row(
        children: [
          Expanded(
            child: ListView(
              reverse: true, // istersek tersten de sıralarız
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true, // içinde bulunan çocuklar kadar yer kaplar scroll ekran. (scroll un durumuna göre yatar ya da dikeyde )
              padding: EdgeInsets.zero,
              // yoksa altta boşluk bıraktı.
              children: [
                Container(
                  color: Colors.purple.shade300,
                  width: 200,
                ),
                Container(
                  color: Colors.teal.shade300,
                  width: 200,
                ),
                Container(
                  color: Colors.purple.shade300,
                  width: 200,
                ),
                Container(
                  color: Colors.teal.shade300,
                  width: 200,
                ),
                Container(
                  color: Colors.purple.shade300,
                  width: 200,
                ),
                Container(
                  color: Colors.teal.shade300,
                  width: 200,
                ),
              ],
            ),
          ),
        ],
      );
  }

  // not : column'un altında listview kullanırken expended ile sarmalamamız gerekir listview ı yoksa boyut sorunu yaşarız ve ekranda hiçbir şey gösterilmez.
// listview ekranın gösterebileceği ekranın da dişarı çıktığı için columnda size hatası vererir.
  Column columnIcindeListe() {
    return Column(
      children: [
        Expanded(
          child: ListView(
            // shrinkWrap: true, // içinde bulunan çocuklar kadar yer kaplar scroll ekran. (scroll un durumuna göre yatar ya da dikeyde )
            padding: EdgeInsets.zero, // yoksa altta boşluk bıraktı.
            children: [
              Container(
                color: Colors.purple.shade300,
                height: 200,
              ),
              Container(
                color: Colors.teal.shade300,
                height: 200,
              )
            ],
          ),
        ),
      ],
    );
  }
}

// not: shrinkWrap: true ise biz scroll un alanını içindekileri boyutunda kısıtlandırmış oluruz.
