import 'dart:async';

import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guiavenezuela/estados/capital_amazona.dart';
import 'package:guiavenezuela/estados/capital_delta.dart';
import 'package:guiavenezuela/estados/capital_guarico.dart';
import 'package:guiavenezuela/estados/capital_zulia.dart';
import 'package:guiavenezuela/page/instagram.dart';
import 'package:guiavenezuela/widget/animation_widget/animating_route.dart';

import 'estados/capital_carabobo.dart';

var category = [
  Text('Favoritos'),
  Text('Hoteles'),
  Text('Transport'),
  Text('Event'),
  Text('Transport')
];

class InteractivePage extends StatefulWidget {
  InteractivePage({Key? key}) : super(key: key);

  @override
  State<InteractivePage> createState() => _InteractivePageState();
}

class _InteractivePageState extends State<InteractivePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? scaleAnimation;

  @override
  void initState() {
    super.initState();
    // Add code after super
    animationController();
    // scaleAnimation =
    //     Tween<double>(begin: 0.0, end: 10.0).animate(scaleAnimation!);
  }

  @override
  void dispose() {
    // Add code before the super
    animationController().dispose();
    // _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.amberAccent, size: 20),
        leadingWidth: 10,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 1, top: 10, right: 20),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('images/perfil.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bienvenido 👋',
                  style: GoogleFonts.atkinsonHyperlegible(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60),
                ),
                SizedBox(height: h / 70),
                Text(
                  'Maria Gonzalez',
                  style: GoogleFonts.atkinsonHyperlegible(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 15),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.yellow,
              child: Icon(
                Icons.notifications_active_outlined,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(child: Icon(Icons.abc)),
      // appBar: AppBar(
      //   title: Text(
      //     'Venezuela',
      //     style: GoogleFonts.inconsolata(color: Colors.grey),
      //     textScaleFactor: 1.6,
      //     selectionColor: Colors.red,
      //   ),
      //   centerTitle: true,
      //   elevation: 5,
      // ),
      body: Column(
        children: [
          // Row(
          //    children: [
          //      Padding(
          //        padding: const EdgeInsets.only(top: 40, left: 25, right: 15),
          //        child: CircleAvatar(
          //          radius: 38,
          //          backgroundImage: AssetImage('images/perfil.jpg'),
          //        ),
          //      ),
          //      Padding(
          //        padding: const EdgeInsets.only(top: 35),
          //        child: Column(
          //          mainAxisAlignment: MainAxisAlignment.start,
          //          crossAxisAlignment: CrossAxisAlignment.start,
          //          children: [
          //            Text(
          //              'Bienvenido 👋',
          //              style: GoogleFonts.atkinsonHyperlegible(
          //                  fontSize: 19,
          //                  fontWeight: FontWeight.bold,
          //                  color: Colors.white60),
          //            ),
          //            SizedBox(height: h / 70),
          //            Text(
          //              'Maria Gonzalez',
          //              style: GoogleFonts.atkinsonHyperlegible(
          //                  fontSize: 25,
          //                  fontWeight: FontWeight.bold,
          //                  color: Colors.amberAccent),
          //            ),
          //          ],
          //        ),
          //      ),
          //      Padding(
          //        padding: const EdgeInsets.only(left: 8, top: 25),
          //        child: const CircleAvatar(
          //          radius: 30,
          //          backgroundColor: Colors.yellow,
          //          child: Icon(
          //            Icons.notifications_active_outlined,
          //            size: 30,
          //          ),
          //        ),
          //      ),
          //      // Padding(
          //      //   padding: const EdgeInsets.only(left: 18,top: 25),
          //      //   child: const Icon(Icons.notifications_active, size: 45,),
          //      // )
          //    ],
          //  ),
          Padding(
            padding: const EdgeInsets.only(right: 2, top: 10, left: 2),
            child: Row(
              children: [
                SizedBox(width: w / 1.35),
                Column(
                  children: [
                    Row(
                      children: const [
                        Text('Vuelos '),
                        Icon(
                          Icons.local_airport,
                          size: 25,
                        ),
                      ],
                    ),
                    SizedBox(height: h / 50),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InstagramPage()),
                      ),
                      child: Row(
                        children: const [
                          Text('Favorito '),
                          Icon(
                            Icons.favorite,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: h / 50),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InstagramPage()),
                      ),
                      child: Row(
                        children: const [
                          Text('Ubicacion '),
                          Icon(
                            Icons.map_outlined,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTapDown: (TapDownDetails details) {
              final RenderBox box = context.findRenderObject() as RenderBox;
              final Offset localOffset =
                  box.globalToLocal(details.globalPosition);

              //Obtener las coordenada X y Y dentro de la imagen
              final double x = localOffset.dx;
              final double y = localOffset.dy;

              //Realizar la logica para determinar que parte de la imagen fue tocada
              if (x < box.size.width / 2 && y < box.size.height / 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Zulia()),
                );
              } else if (x >= box.size.width / 2 && y < box.size.height / 2) {
                InkWell(
                  onTap: () {
                    // _animationController.forward();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Guarico()));
                  },
                );
              } else if (x < box.size.width / 2 && y >= box.size.height / 2) {
                Container(
                  child: Placeholder(
                    child: CircularProgressIndicator(),
                  ),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Carabobo()),
                );
              } else if (x < box.size.width / 2 && y >= box.size.height / 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Amazona()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CapitalDelta()),
                );
              }
            },
            onScaleStart: (details) => 1.0,
            onScaleEnd: (details) => 0.1,
            child: Center(child: Image.asset('images/mapa.png')),
          ),
        ],
      ),
    );
  }

  AnimationController animationController() {
    return _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500))
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            Navigator.push(
              context,
              AnimatingRoute(
                route: Guarico(),
              ),
            );
            Timer(
              const Duration(milliseconds: 300),
              () {
                _animationController?.reset();
              },
            );
          }
        },
      );
  }
}
