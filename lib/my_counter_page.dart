import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('MyHomePage widget çalış');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'My Counter AppBar',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyNewTextWidget(),
            Text(_sayac.toString(),
                style: Theme.of(context).textTheme.headlineLarge)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          debugPrint('Butona Tıklandı ve Sayaç Değeri $_sayac');
          sayaciArttir();
        },
        backgroundColor: Colors.teal,
        child: const Icon(
          Icons.plus_one_outlined,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {
      // yapılan her değişiklikte ilgili widgetin build methodunu uyararak ekrandaki durumun da değişmesini sağlar
    });
    _sayac++;
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Butona basılma miktarı',
      style: TextStyle(
        fontSize: 24,
      ),
    );
  }
}
