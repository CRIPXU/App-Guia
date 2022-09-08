import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Amazona extends StatelessWidget {
  Amazona({Key? key}) : super(key: key);

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.transparent, elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Capital:Puerto Ayacucho',style: TextStyle(color: Colors.white),),
        shadowColor: Colors.black,

      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          _pagina1(),
        ],
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Colors.transparent],
              begin: Alignment.bottomRight)),
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _backgroundimage({required String urlImage}) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CachedNetworkImage(
        imageUrl: urlImage,
        fit: BoxFit.cover,
        fadeInDuration: const Duration(milliseconds: 100),
      ),
    );
  }

  Widget borrosa() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/R.dc8e98c51c457e8bc270acfae8d2306d?rik=LTSDUi7Cv2zChw&pid=ImgRaw&r=0&sres=1&sresct=1'),
        borrosa(),
        PageView(controller: _controller, children: [
          Card(
            semanticContainer: const bool.hasEnvironment("Pisillo"),
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
            color: Colors.black12,
            margin:
                const EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    //width: double.infinity,
                    child: Image.asset(
                      'images/platos/lapa.png',
                    ),
                  ),
                  //Titulo
                  Text(
                    'Platos Exóticos',
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.white24,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'El estado Amazonas o estado de la selva como se conoce en toda Venezuela. Este estado tiene tradiciones propias, que lo diferencian de otros, entre las comidas típicas del estado Amazonas, se destacan los platos exóticos y raros como la tortuga servida en su carapacho, hasta salsas extrañas como la catara, que está hecha a base de hormigas.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            color: Colors.black12,
            margin:
                const EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    //width: double.infinity,
                    child: Image.asset(
                      'images/platos/bambunco.png',
                    ),
                  ),
                  //Titulo
                  Text(
                    'Bailes Típicos de Amazonas',
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.white24,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Bambuco. El bambuco es uno de los bailes tradicionales de la región que sobrevive hasta nuestros días.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
