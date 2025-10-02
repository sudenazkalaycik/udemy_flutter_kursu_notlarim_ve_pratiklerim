import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _kahve_foto =
        'https://i.pinimg.com/736x/ab/19/be/ab19bef914aaef52e3856fb6d4c8e750.jpg';
    String _kahve_foto_2 =
        'https://i.pinimg.com/736x/be/8b/44/be8b4487518e2391765ab5462b67d458.jpg';
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    //width: 120,
                    height: 500,
                    child: Image.asset(
                      'assets/images/kahve_foto_flutter.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    //width: 120,
                    //height: 200,
                    child: Image.network(
                      _kahve_foto,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Container(
                      color: Colors.indigoAccent,
                      //width: 200,
                      //height: 400,
                      child: const CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.pink,
                        foregroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                          'https://i.pinimg.com/1200x/68/23/e2/6823e22c6081fac3ba331c5e987ddc1f.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: FadeInImage.assetNetwork(
              // webden görsel gelene kadar belirlenen fotoğrafı ekrana verir
              placeholder: 'assets/images/loading_flutter_gif.gif',
              image: _kahve_foto_2,
              fit: BoxFit.cover,
            ),
          ),
          Placeholder(),
        ],
      ),
    );
  }
}
