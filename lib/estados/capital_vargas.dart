import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vargas extends StatelessWidget {
  Vargas({Key? key}) : super(key: key);

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Capital: La guaira')),
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
        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
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
            'https://th.bing.com/th/id/R.60b3765a85b3b5115447a1ea002e5018?rik=mvxAZbxEbJ%2fJAQ&pid=ImgRaw&r=0'),
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
                          'images/platos/frito.png',
                        ),
                      ),
                      //Titulo
                      Text(
                        'Pescado frito',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Esta es una comida típica del estado Vargas que tiene mucha fama. Muchas personas de los estados de alrededor suelen visitar el estado Vargas para disfrutar de sus playas mientras degustan un delicioso pescado frito.\n\nEn cuanto al pescado frito, el pescado que se elige para freír puede variar de acuerdo al lugar donde se prepara dentro del estado Vargas, los más comunes con el carite y el pargo.\n\n Este plato se acompaña con tostones, ensalada y queso como contornos. También puede cambiarse los tostones por papas fritas. La ensalada rallada es otro de los contornos más comunes en este plato',
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
                          'images/platos/diablo.png',
                        ),
                      ),
                      //Titulo
                      Text(
                        'Diablos danzantes de Naiguatá',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'es una expresión cultural que se manifesta a través de la danza tradicional en la religiosidad popular. Se lleva a cabo al este del estado La Guaira; región centro costera de Venezuela, en la población de Naiguatá, su principal actividad tiene lugar el jueves de Corpus Christi.',
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

