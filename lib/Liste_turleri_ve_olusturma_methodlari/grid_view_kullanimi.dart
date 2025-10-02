import 'package:flutter/material.dart';

class GridViewKullanimi extends StatelessWidget {
  const GridViewKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View Kullanımı"),
      ),
      body: GridView.builder(
        itemCount: 100,
        primary: false,
        //padding: EdgeInsets.all(5),

        // yer tasarrufu yapmak için builder kullanalım listviewda da yaptığımız gibi
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector( // yapılarımızı tıklanabilir yapar
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: Colors.pink[100 * ((index + 1) % 8)],
                  gradient: const LinearGradient(
                      colors: [Colors.brown, Colors.white70],
                      begin: AlignmentGeometry.bottomCenter,
                      end: AlignmentGeometry.topCenter),
                  image: const DecorationImage(
                    // image provider bekliyor
                    image: AssetImage('assets/images/img.png'),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  ),
                  border: Border.all(
                    color: Colors.black54,
                    width: 10,
                    style: BorderStyle.solid,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(10, 10),
                        blurRadius: 20)
                  ],
                  // borderRadius: BorderRadius.circular(20)
                  shape: BoxShape.circle
                  /* Border(
                bottom: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.black54,
                  width: 20,
                ),
                top: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.brown,
                  width:10
                ),
              ),*/

                  ),
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(10),
                // texte padingi ilk kez kullandık
                child: Text(
                  "Kard no: ${index + 1}",
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                  // textAlign: TextAlign.end,
                ),
              ),
            ),
            onTap: () => debugPrint("${index} nolu karta 1 kez tıklandı"),
            onDoubleTap: () =>  debugPrint("${index} nolu karta 2 kez tıklandı"),
            onLongPress: () =>  debugPrint("${index} nolu karta uzun tıklandı"),
            onHorizontalDragStart: (e) =>  debugPrint("${index} nolu kart yatayda sürüklendi"),
          );
        },
      ),
    );
  }

  GridView gridViewExtentKullanimi() {
    return GridView.extent(
      maxCrossAxisExtent: 500,
      // her bir elemanın genişliği ne kadar olsun, onna göre eleman sığdıracağım ekrana diyor
      primary: false,
      mainAxisSpacing: 10,
      crossAxisSpacing: 20,
      padding: EdgeInsets.all(10),
      children: [
        Card(
          color: Colors.orange,
          child: Center(
            child: Text(
              "Kart 1",
            ),
          ),
        ),
        Card(
          color: Colors.teal,
          child: Center(
            child: Text(
              "Kart 2",
            ),
          ),
        ),
        Card(
          color: Colors.purple,
          child: Center(
            child: Text(
              "Kart 3",
            ),
          ),
        ),
        Card(
          color: Colors.pink,
          child: Center(
            child: Text(
              "Kart 4",
            ),
          ),
        ),
        Card(
          color: Colors.blue,
          child: Center(
            child: Text(
              "Kart 5",
            ),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(
            child: Text(
              "Kart 6",
            ),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Center(
            child: Text(
              "Kart 7",
            ),
          ),
        ),
        Card(
          color: Colors.red,
          child: Center(
            child: Text(
              "Kart 8",
            ),
          ),
        ),
        Card(
          color: Colors.lightGreen,
          child: Center(
            child: Text(
              "Kart 9",
            ),
          ),
        ),
        Card(
          color: Colors.purpleAccent,
          child: Center(
            child: Text(
              "Kart 10",
            ),
          ),
        ),
        Card(
          color: Colors.lime,
          child: Center(
            child: Text(
              "Kart 11",
            ),
          ),
        ),
        Card(
          color: Colors.amberAccent,
          child: Center(
            child: Text(
              "Kart 12",
            ),
          ),
        ),
        Card(
          color: Colors.brown,
          child: Center(
            child: Text(
              "Kart 13",
            ),
          ),
        ),
        Card(
          color: Colors.deepOrangeAccent,
          child: Center(
            child: Text(
              "Kart 14",
            ),
          ),
        ),
      ],
      // bu eğer ekranda kaydırmaay yetecek kadar eleman yoksa kaydırma efektinin olup olmayacağını kontrol ediyor
    );
  }

  GridView gridViewCountKullanimi() {
    return GridView.count(
      crossAxisCount: 5,
      //reverse: false,
      scrollDirection: Axis.horizontal,
      // ya da vertical
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 6,
      mainAxisSpacing: 6,
      primary: false,
      children: [
        Card(
          color: Colors.orange,
          child: Center(
            child: Text(
              "Kart 1",
            ),
          ),
        ),
        Card(
          color: Colors.teal,
          child: Center(
            child: Text(
              "Kart 2",
            ),
          ),
        ),
        Card(
          color: Colors.purple,
          child: Center(
            child: Text(
              "Kart 3",
            ),
          ),
        ),
        Card(
          color: Colors.pink,
          child: Center(
            child: Text(
              "Kart 4",
            ),
          ),
        ),
        Card(
          color: Colors.blue,
          child: Center(
            child: Text(
              "Kart 5",
            ),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(
            child: Text(
              "Kart 6",
            ),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Center(
            child: Text(
              "Kart 7",
            ),
          ),
        ),
        Card(
          color: Colors.red,
          child: Center(
            child: Text(
              "Kart 8",
            ),
          ),
        ),
        Card(
          color: Colors.lightGreen,
          child: Center(
            child: Text(
              "Kart 9",
            ),
          ),
        ),
        Card(
          color: Colors.purpleAccent,
          child: Center(
            child: Text(
              "Kart 10",
            ),
          ),
        ),
        Card(
          color: Colors.lime,
          child: Center(
            child: Text(
              "Kart 11",
            ),
          ),
        ),
        Card(
          color: Colors.amberAccent,
          child: Center(
            child: Text(
              "Kart 12",
            ),
          ),
        ),
        Card(
          color: Colors.brown,
          child: Center(
            child: Text(
              "Kart 13",
            ),
          ),
        ),
        Card(
          color: Colors.deepOrangeAccent,
          child: Center(
            child: Text(
              "Kart 14",
            ),
          ),
        ),
      ],
    );
  }
}


// GestureDetector() yapılarımızı tıklanabilir yapar, eğer yapıların ayrı ayrı işlemler yapması isteniyorsa itembuilder yerine listview gibi yapıla kullanmamız gerekiyor.