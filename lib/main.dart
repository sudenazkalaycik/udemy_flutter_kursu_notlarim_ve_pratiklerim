import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()); // Ana yapı material app dir, ve aşağıda tanımladığımız MyApp i ekleriz
}

class MyApp extends StatelessWidget {
  @override // Abstract sınıf olduğu için bir şeyi return edebilmesi adına  build methodunu kullanırız
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(primaryColor: , actionIconTheme: ), varsayılan olarak uyugulama teması mavi
      // buradan tek tek değiştirmek yerine tek seferde değiştirebiliriz

      // app bar home diye bir widget alır ve bu widget da bizim
      // temellerimizden biridir ve uygulamanın hangi sayfadan başlayacağını gösterir.
      home: Scaffold(
        backgroundColor: Colors.yellow,
        // scaffold bizim her şeyi üstüne inşaa ettiğimiz yapıdır bize bir taslak veririr bazı
        // widgetların yeri bellirdir scaffoldda.ör: appbar, bottomnavigation bar gibi
        appBar: AppBar(
          backgroundColor: Colors.red,
          // yazıyı title ile alır
          title: Text(
            "Deneme",
          ),
        ),
        body: Container(
          color: Colors.pinkAccent, // eğer içine bir yapı verilmezse var olan bir üst yapının boyutu kadar yayılır
        child:Text("Sudenaz"*100),// bir container çocuğu kadar yer kaplar,
        ),

        /*Text(
          "Merhaba",
          // eğer metini düzenlemek istersem text widgwti içerisinde  style ı kullanmam gerekicek,
          style: Tex,tStyle(
              fontSize: 50,
              color: Colors.blueAccent,
              letterSpacing: 7,
              fontWeight: FontWeight.w700,
              backgroundColor: Colors.pink),
          // burada bir çok özelliği daha değiştirebiliriz ama genel olrak bunları daha sık kullanırız
        ),*/

        // scaffoldun diğer elemanlar dışında widgetlerin yer aldığı kısım
        //backgroundColor: Colors.red[100], bu şekilde renk değiştirebilriz
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // basıldığında ne olacağı buraya yazılır
            debugPrint("Basılma işlemi gerçekleşti"); // print de yazabilridik
          },
          backgroundColor: Colors.amber,
          // içine bir şey eklemek istesek child kullanmamız gerekir
          child: Icon(
            Icons.ac_unit,
            color: Colors.blue,
          ), // içime ikon eklemek istersem bu şekilde ekleyebilirim.
          // istesem içine text de ekleyebilirim
          //child: Text("Sudenaz")
        ),
      ),
    );
  }
}
