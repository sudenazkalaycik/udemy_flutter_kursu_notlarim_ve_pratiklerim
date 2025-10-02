import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              // bulunduğu durumlara göre butonların davranışlarını ayarlarız
              if (states.contains(WidgetState.pressed)) {
                return Colors.black;
              }
              if (states.contains(WidgetState.focused)) {
                return Colors.brown;
              }
              return null;
            }),
            foregroundColor: WidgetStateProperty.all(
              Colors.cyan,
            ),
          ),
          onPressed: () {},
          onLongPress: () {
            Text(
              "Uzun basıldı",
            );
          },
          child: const Text(
            "Text Button",
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.add_box_sharp,
          ),
          label: Text(
            "Text icon button",
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black54,
            foregroundColor: Colors.white,
            overlayColor: Colors.white,
          ),
          onPressed: () {},
          child: Text(
            'Elevated button',
            // style: TextStyle(color: Colors.white),
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add_box_sharp),
          label: Text(
            'Elevated icon button',
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text(
            "Outline Button",
          ),
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  60,
                ),
              ),
            ),
            side: BorderSide(
            color: Colors.pink,
    width: 2,
    //strokeAlign: 1,
    ),
          ),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add_box_sharp),
          label: Text(
            'Outline icon button',
          ),
          style: OutlinedButton.styleFrom(
            shape: BeveledRectangleBorder(),
            side: BorderSide(
              color: Colors.pink,
              width: 2,
              //strokeAlign: 1,
            ),
          ),
        ),
      ],
    );
  }
}
