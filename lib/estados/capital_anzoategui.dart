import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Anzoategui extends StatelessWidget {
  Anzoategui({Key? key}) : super(key: key);

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Capital: Barcelona')),
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
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
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
            'https://i.ytimg.com/vi/78Y1fmfute8/maxresdefault.jpg'),
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
                          'images/platos/morcilla.png',
                        ),
                      ),
                      //Titulo
                      Text(
                        'Morcilla',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Esencialmente la morcilla es un embutido que se compone por la sangre de cerdo y otros restos de cerdo. Se ha tomado como una de las comidas típicas del estado Anzoátegui pues si se quiere es un plato tradicional que puede acompañar todo tipo de alimento en la mesa de las familias y de los restaurantes en el estado Anzoátegui.\n\nEn el estado Anzoátegui, es un plato típico y se puede servir también para acompañar otros platos, se puede usar como relleno y como contorno. Es muy común ver morcilla en las parrillas. De manera que más que típico es básico, esencial, y forma parte de la tradición gastronómica del estado.',
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
                          'images/platos/joropo2.png',
                        ),
                      ),
                      //Titulo
                      Text(
                        'El pájaro guarandol',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Una de las tradiciones más populares del estado Anzoátegui y conocida en toda Venezuela es “El pájaro guarandol”. Al igual que con otras tradiciones del estado, se trata de un baile típico.\n\nEsta narra la historia de un cazador y un ave. Es una historia trágica que muestra como el hombre a causa de las ambiciones destruye la naturaleza.\n\nEn medio de la tragedia, un tercer personaje aparece; un brujo que resucita al pájaro. Cada escena del baile es narrada por estrofas. El resultado es una combinación entre obra de teatro y musical.',
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

