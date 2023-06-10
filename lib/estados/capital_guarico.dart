import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Guarico extends StatelessWidget {
  Guarico({Key? key}) : super(key: key);

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Capital: \nSan Juan de los Morros')),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          _pagina1(),
          //pagina2guarico(),
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
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.0)),
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
        PageView(
            controller: _controller,
            children: [
              Card(semanticContainer: const bool.hasEnvironment("Pisillo"),
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.black12,
                margin: const EdgeInsets.only(top: 15,right: 15,left: 15,bottom: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 200,
                        //width: double.infinity,
                        child: Image.asset(
                          'images/platos/Pisillo_Guariqueno.png',
                        ),
                      ),
                      //Titulo
                      Text(
                        'Pisillo Guariqueño',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'es uno de los símbolos de la gastronomía en Guárico, y consiste precisamente en una fritura, la cual se aliña con ajo y ají dulce, en la que se encrespan las hilachas de carne de venado salada y secada al sol, también es posible prepararlo con carne de ganado, pescado o chigüire.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),Card(elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.black12,
                margin: const EdgeInsets.only(top: 15,right: 15,left: 15,bottom: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 200,
                        //width: double.infinity,
                        child: Image.asset(
                          'images/platos/cruzmayo.png',
                        ),
                      ),
                      //Titulo
                      Text(
                        'Bailes Típicos de Guarico',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Velorio de Cruz: Fiesta religiosa y social realizada durante el mes de mayo, en donde los recitadores más afamados del país cantan fulías acompañados por música de cuatro,guitarra, maracas, arpa y tambora. El Pájaro Guarandol: Comparsa formada por varias personas que danzan y cantan.',
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

