import 'package:flutter/material.dart';

class CardveListtilerKullanimi extends StatelessWidget {
  const CardveListtilerKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: const Text(
          "Cartlar ve Listtilelar",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          reverse: true , // tersten sıralar
          children: [
            Column(
              children: [
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
              ],
            ),
            Text(
              "data",
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "data",
              ),
            )
          ],
        ),
      ),
    );
  }

  // listview ve singlechildscrollview kullanıcı dostu yapılar değiller. hafizada her bir eleman yer kaplarlar, daha etkin yapılar kullanılmalı, lazım oldukça oluşturulup kullanılması gerekn yapılar kullanılmalı
  SingleChildScrollView SingleChildScrollViewKullanimi() {
    return SingleChildScrollView(
      // kaydırılabilir ekran özelliği
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.all(20),
          color: Colors.purple.shade50,
          shadowColor: Colors.cyan,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: ListTile(
            // kart için gerekli yapıları sağlar
            leading: Icon(
              Icons.adb_rounded,
            ),
            title: Text("Ana başlık"),
            subtitle: Text("Alt başlık"),
            trailing: Icon(
              Icons.access_time_filled_rounded,
            ),
          ),
        ),
        Divider(
          color: Colors.indigoAccent,
          height: 10,
          indent: 20,
          endIndent: 20,
          thickness: 2,
        )
      ],
    );
  }
}
