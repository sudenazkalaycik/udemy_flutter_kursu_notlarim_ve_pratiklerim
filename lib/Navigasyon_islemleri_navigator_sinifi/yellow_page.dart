import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Yellow Page"),
      ),
      backgroundColor: Colors.yellow.shade300,
      body: Container(
        child: null,
      ),
    );
  }
}
