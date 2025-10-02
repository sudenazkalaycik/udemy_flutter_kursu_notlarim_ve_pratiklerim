import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ContainerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      alignment: Alignment.center,
      width: 75,
      height: 75,
      color: renk,
      margin: EdgeInsets.only(top: margin),
      child: Text(
        harf,
        style: TextStyle(fontSize: 50),
      ),
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContainerOlustur('D', Colors.orange.shade200),
        ContainerOlustur('A', Colors.orange.shade400),
        ContainerOlustur('R', Colors.orange.shade600),
        ContainerOlustur('T', Colors.orange.shade800),
      ],
    );
  }

  Column dersleriColumnOlustur() {
    return Column(
      children: [
        Expanded(
          child: ContainerOlustur('E', Colors.orange.shade300, margin: 10),
        ),
        Expanded(
          child: ContainerOlustur('R', Colors.orange.shade400, margin: 10),
        ),
        Expanded(
          child: ContainerOlustur('S', Colors.orange.shade500, margin: 10),
        ),
        Expanded(
          child: ContainerOlustur('L', Colors.orange.shade600, margin: 10),
        ),
        Expanded(
          child: ContainerOlustur('E', Colors.orange.shade700, margin: 10),
        ),
        Expanded(
          child: ContainerOlustur('R', Colors.orange.shade800, margin: 10),
        ),
        Expanded(
          child: ContainerOlustur('İ', Colors.orange.shade900, margin: 10),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50, // default is 56
          //toolbarOpacity: 0.5,
          backgroundColor: Colors.black,
          title: const Text(
            'Flutter Kurs Pratiklerim',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: Container(
          color: Colors.red.shade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Expanded(child: dersleriColumnOlustur()),
            ],
          ),
        ),
      ),

      /*floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          child: Icon(
            Icons.access_time_filled,
            color: Colors.greenAccent,
          ),
          backgroundColor: Colors.deepOrange,
        ),*/
    );
  }
}

// body kısmında yazabiliriz
Widget ContainerDersleri() {
  // bu dersin ilk aşamasındaki kodlarımız - row column öncesi
  String _img = 'https://nolur.com/nah.png';
  String _img1 =
      'https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png';
  String _imgfener =
      'https://upload.wikimedia.org/wikipedia/tr/8/86/Fenerbah%C3%A7e_SK.png';

  return Center(
    child: Container(
// color: Colors.deepOrangeAccent,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(_imgfener),
// fit: BoxFit.contain,
        ),
        boxShadow: [
          // boxshadow mutlaka liste şeklinde tanımlanmalı tek nesne alacak olsa dahi
          BoxShadow(
              color: Colors.amberAccent,
              offset: Offset(15, -2),
              blurRadius: 10),
          BoxShadow(
              color: Colors.indigo, offset: Offset(-15, 3), blurRadius: 10),
        ],
        color: Colors.black,
        shape: BoxShape.circle,
        border: Border.all(
          width: 5,
          color: Colors.black87,
        ),
      ),
/*child: FlutterLogo(
              size: 200,
            ),*/
      padding: EdgeInsets.all(100),
      margin: EdgeInsets.all(80),
    ),
  );
}

Widget RowColumnDersleri() {
  return Container(
    //height: 200,
    // width: 200,
    color: Colors.tealAccent,
    child: const Column(
      // Aynısı ROW  için de geçerlidir !!!!!
      // column içinde row, row içinde column olabilir <3
      //mainAxisSize: MainAxisSize.min, // içindeki nesne kadar boyutlanır
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // nesneleri istenen şekilde birbirlerine göre hizalar - yatayda
      crossAxisAlignment: CrossAxisAlignment.center,
      // nesneleri dikeyde istenen yerde hizalar
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "S",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "U",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "D",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "E",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "N",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "A",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "Z",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ],
        ),
        Icon(
          Icons.adb_rounded,
          color: Colors.deepPurple,
          size: 80,
        ),
        Icon(
          Icons.adb_rounded,
          color: Colors.black,
          size: 80,
        ),
        Icon(
          Icons.adb_rounded,
          color: Colors.brown,
          size: 80,
        ),
        Icon(
          Icons.adb_rounded,
          color: Colors.pink,
          size: 80,
        ),
      ],
    ),
  );
}

List<Widget> get sorunluContainer {
  return [
    Container(
      width: 75,
      height: 75,
      color: Colors.yellow,
    ),
    Container(
      width: 75,
      height: 75,
      color: Colors.red,
    ),
    Container(
      width: 75,
      height: 75,
      color: Colors.blue,
    ),
    Container(
      width: 75,
      height: 75,
      color: Colors.orange,
    ),
    Container(
      width: 75,
      height: 75,
      color: Colors.blue,
    ),
    Container(
      width: 75,
      height: 75,
      color: Colors.red,
    ),
  ];
}

// esnek tut ve sığdığı alan kadar kapla- nesne ana boyutu geçersiz
// flex - bir nesnenin diğerine göre kaç katı olacağını gösterir, default değer 1
List<Widget> get expandedContainer {
  return [
    Expanded(
      flex: 2,
      child: Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
    ),
  ];
}

// esnek tut ama alan varsa nesnenin kendi boyutunu koru - flexible
List<Widget> get flexibleContainer {
  return [
    Flexible(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
    ),
    Flexible(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
    ),
    Flexible(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
    ),
    Flexible(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
    ),
  ];
}

Widget IciceContainerlar() {
  return Column(
    children: [
      Container(
        height: 100,
        color: Colors.yellow[300],
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: Container(color: Colors.green[300]),
            ),
            Container(
              width: 100,
              color: Colors.orange[300],
            ),
            Container(
              width: 100,
              color: Colors.red[300],
            ),
          ],
        ),
      ),
      Container(
        height: 80,
        color: Colors.blue[300],
      ),
    ],
  );
}
