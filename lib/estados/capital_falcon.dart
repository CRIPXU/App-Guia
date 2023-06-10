import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Falcon extends StatelessWidget {
  Falcon({Key? key}) : super(key: key);

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Capital: Coro')),
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
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
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
            'https://th.bing.com/th/id/R.3bd864d3efd27aa216cdbd3416cb9fff?rik=hWwsfUJbUKf4cQ&riu=http%3a%2f%2fwww.notilogia.com%2fwp-content%2fuploads%2f2015%2f11%2fcoro.jpg&ehk=dUjr8yX8ISG81YZObl8fvA6csfPlJwGM%2fIvJyOUu%2b5o%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
        borrosa(),
        PageView(
            controller: _controller,
            children: [
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.black12,
                margin: const EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 200,
                        //width: double.infinity,
                        child: Image.asset(
                          'images/platos/arepa.png',
                        ),
                      ),
                      //Titulo
                      Text(
                        'La Arepa Pelada',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'La arepa es una de las comidas típicas del municipio Flacón, pero no solo en Falcón, sino que son tradicionales en toda la cocina venezolana. Es así como a lo largo del país pueden encontrarse en los restaurantes de comida tradicional la arepa. Sin embargo, en el estado Falcón la arepa se prepara con otros ingredientes, lo que le da vida a lo que se conoce como la arepa pelada.\n\nEl sabor de la arepa pelada es sorprendente, además que su preparación también tiene un toque muy falconiano, toque que se ha exportado a otras regiones del país, por lo que las arepas peladas pueden conseguirse también en los estado Zulia, y Lara, en los que se reconoce el origen falconiano de estas arepas.',
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
                margin: const EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 200,
                        //width: double.infinity,
                        child: Image.asset(
                          'images/platos/Turas.png',
                        ),
                      ),
                      //Titulo
                      Text(
                        'Danza de las turas',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'El baile o danza de las turas es un ritual sincrético tradicional de la frontera de Falcón y Lara, estados del occidente de Venezuela. Le sirve al campesinado para invocar las buenas cosechas los días 23 y 24 de septiembre de cada año. Nombre: Baile de las turas.',
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

