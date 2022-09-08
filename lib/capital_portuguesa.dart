import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Portuguesa extends StatelessWidget {
  Portuguesa({Key? key}) : super(key: key);

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Capital: Guanare')),
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
        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
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
            'https://th.bing.com/th/id/R.782e285dd04a1a65afb368f1050869d7?rik=4B6Kxg0V1v%2fxGQ&pid=ImgRaw&r=0'),
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
                          'images/platos/sapoara.png',
                        ),
                      ),
                      //Titulo
                      Text(
                        'Guisados de pescado de río (bagre, cabeza de cachama)',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'En primer lugar debes saber que el estado Portuguesa es un estado Venezolano que tiene a Guarane como capital, el nombre de este estado se debe al río Portuguesa, ya que tiene una gran presencia y relevancia en la región. \n\nEste plato se trata de un guisado típico de la zona, que a pesar de ser un plato con características del llano y de las zonas de ríos, es único del estado Portuguesa, y se suele preparar con bagre, un pez que puede encontrarse en las aguas dulces del río.Este pescado es económico y no amerita mucha cocción. Si se desea la salsa espesa, se recomienda agregarle una cucharada de harina de trigo al caldo. Y con eso bastará para degustar de un sabroso plato típico que no encontrarás en otro lugar.',
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
                          'images/platos/joropo.png',
                        ),
                      ),
                      //Titulo
                      Text(
                        'El joropo',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'es el baile más representativo de Venezuela y se practica en todo el país, aunque tiene su origen en Apure. Los instrumentos que se utilizan para interpretar la música son el arpa, el cuatro (una especie de guitarra), y las maracas, aunque en Barines y Portuguesa se utiliza la bandola en vez de el arpa.',
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

