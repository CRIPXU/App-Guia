import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Yaracuy extends StatelessWidget {
  Yaracuy({Key? key}) : super(key: key);

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Capital: San Felipe')),
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
            'https://th.bing.com/th/id/R.940d5b5ac3862c36a5d4486bcb04ccdd?rik=hKafWys2RFu2mw&pid=ImgRaw&r=0&sres=1&sresct=1'),
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
                          'images/platos/cachapa.png',
                        ),
                      ),
                      //Titulo
                      Text(
                        'Cachapas De Maíz',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Las cachapas de maíz se atribuyen originalmente a la región central venezolana, se cree que los indígenas que habitaban las tierras mirandinas cultivaban el maíz, el cual fue adorado y considerado de origen divino, tan apreciado fue, que su culto se asoció posteriormente con la religión cristiana. Es así como luego pasó a ser costumbre sembrar granos de maíz en el día San Isidro Labrador para rendir homenaje a los agricultores.',
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
                        'Bailes de joropos Yaracuyano',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'El joropo comienza con el ‘valsiao’, especie de vals criollizado, que de lance en lance servirá para que los bailarines “descansen”. Durante esta figura se alternarán la ‘vuelta sencilla’, en la que uno de los ejecutantes pasa bajo el arco.',
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

