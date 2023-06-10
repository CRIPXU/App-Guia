import 'package:animated_button/animated_button.dart';
import 'package:animator/animator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:guiavenezuela/estados/capital_amazona.dart';
import 'package:guiavenezuela/estados/capital_anzoategui.dart';
import 'package:guiavenezuela/estados/capital_apure.dart';
import 'package:guiavenezuela/estados/capital_aragua.dart';
import 'package:guiavenezuela/estados/capital_barinas.dart';
import 'package:guiavenezuela/estados/capital_bolivar.dart';
import 'package:guiavenezuela/estados/capital_carabobo.dart';
import 'package:guiavenezuela/estados/capital_cojedes.dart';
import 'package:guiavenezuela/estados/capital_delta.dart';
import 'package:guiavenezuela/estados/capital_distritocapital.dart';
import 'package:guiavenezuela/estados/capital_falcon.dart';
import 'package:guiavenezuela/estados/capital_guarico.dart';
import 'package:guiavenezuela/estados/capital_lara.dart';
import 'package:guiavenezuela/estados/capital_merida.dart';
import 'package:guiavenezuela/estados/capital_miranda.dart';
import 'package:guiavenezuela/estados/capital_monagas.dart';
import 'package:guiavenezuela/estados/capital_nuevaesparta.dart';
import 'package:guiavenezuela/estados/capital_portuguesa.dart';
import 'package:guiavenezuela/estados/capital_sucre.dart';
import 'package:guiavenezuela/estados/capital_tachira.dart';
import 'package:guiavenezuela/estados/capital_trujillo.dart';
import 'package:guiavenezuela/estados/capital_vargas.dart';
import 'package:guiavenezuela/estados/capital_yaracuy.dart';
import 'package:guiavenezuela/estados/capital_zulia.dart';
import 'package:guiavenezuela/interative_page.dart';
import 'package:guiavenezuela/nuevo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Venezuela',
      theme: ThemeData(brightness: Brightness.dark),
      home: PageLoginGuideAr(), //home: const InteractivePage(),
    );
  }
}

class PageLoginGuideAr extends StatefulWidget {
  const PageLoginGuideAr({Key? key}) : super(key: key);

  @override
  State<PageLoginGuideAr> createState() => _PageLoginGuideArState();
}

class _PageLoginGuideArState extends State<PageLoginGuideAr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(),
          // _pagina17(), //Amazona
          // _pagina19(), //Anzoategui
          // _pagina5(), //Apure
          // _pagina16(), //Aragua
          // _pagina6(), //Barinas
          // _pagina7(), //Bolivar
          // _pagina20(), //Carabobo
          // _pagina21(), //Cojedes
          // _pagina25(), //Delta Amacuro
          // _pagina23(), //Distrito Capital
          // _pagina22(), //Falcon
          // _pagina4(), //Guarico
          // _pagina12(), //Lara
          // _pagina3(), //Mérida
          // _pagina18(), //Miranda
          // _pagina10(), //Monagas
          // _pagina24(), //Nueva Esparta
          // _pagina8(), //Portuguesa
          // _pagina11(), //Sucre
          // _pagina14(), //Trujillo
          // _pagina26(), //Tachira
          // _pagina15(), //Vargas
          // _pagina13(), //Yaracuy
          // _pagina9(), //Zulia
        ],
      ),
    );
  }

  Stack _pagina1() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
          urlImage:
              "https://th.bing.com/th/id/R.9bba98de6eb93ca1a91013113cc6cdef?rik=ARCB6ayKTXDGmw&pid=ImgRaw&r=0",
        ),
        Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.9],
                    colors: [Colors.black, Colors.transparent])),
            child: _texto()),
      ],
    );
  }

  //Widget _colorFondo() {
  //return Container(
  //width: double.infinity,
  //height: double.infinity,
  //color: const Color.fromRGBO(108, 192, 218, 1.0),
  //);
  //}

  Widget _backgroundimage({required String urlImage}) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        fadeInDuration: const Duration(milliseconds: 0),
        imageUrl: urlImage,
      ),
    );
  }

  Widget _texto() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 150.0),
          const Text.rich(
            TextSpan(
              text: 'Hola,  ',
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
              children: <TextSpan>[
                TextSpan(
                    text: 'Bienvenido!\n',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 24)),
                TextSpan(
                    text: 'Esto es Venezuela',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 38)),
              ],
            ),
          ),
          Container(
            child: Image.asset(
              "images/brujula.png",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ),
          const SizedBox(height: 1),
          Expanded(child: Container()),
          Animator<double>(
            duration: const Duration(milliseconds: 1000),
            cycles: 0,
            curve: Curves.easeInOutBack,
            tween: Tween<double>(begin: 15.0, end: 50.0),
            builder: (context, animatorState, child) => Icon(
              Icons.keyboard_arrow_down,
              size: animatorState.value * 2,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage: "https://mmedia.eluniversal.com/17994/roraima-20935.jpg"),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Colors.black, Colors.transparent],
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 200.0),
              Stack(
                children: const <Widget>[
                  Text(
                      "En esta aplicación podrás encontrar información detalla de las regiones de Venezuela y sus atractivos turísticos. Esta guía cuenta con información útil para el viajero.",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 1),
              Animator<double>(
                duration: const Duration(milliseconds: 1000),
                cycles: 0,
                curve: Curves.easeInOutBack,
                tween: Tween<double>(begin: 15.0, end: 50.0),
                builder: (context, animatorState, child) => Icon(
                  Icons.keyboard_arrow_down,
                  size: animatorState.value * 2,
                  color: Colors.white,
                ),
              ),
              Expanded(child: Container()),
              AnimatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InteractivePage(),
                  ),
                ),
                color: Colors.blueAccent,
                width: MediaQuery.of(context).size.width / 1.5,
                child: const Text('iniciar',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 50)
            ],
          ),
        )
      ],
    );
  }

  Widget _pagina3() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                "https://th.bing.com/th/id/R.4124a9eae008703083b956fd49d2a194?rik=2x7WYR8j3bcHhA&pid=ImgRaw&r=0"),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [Colors.black, Colors.transparent],
                  end: Alignment.bottomRight)),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110.0),
              const Expanded(
                child: Text.rich(
                  TextSpan(
                    text: 'Mérida',
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              '\nEstá compuesto de tierras bajas y altas, es decir, valles y montañas, y en ambos casos la ganadería predomina. Esta característica tan peculiar del estado ha permitido el surgimiento de una serie de queserías artesanales, en las que se pueden encontrar cuajadas, sueros, y quesos de pasta blanda, como el queso blanco suave, o quesos de pasta semidura, como el ahumado, o dura como los quesos tipo provolone (o provoandino).\n\nAhora bien, a pesar de que la comida típica del estado Mérida se basa fundamentalmente en la ganadería, es importante tomar en cuenta que es bastante variada y se caracteriza además por métodos muy singulares de preparación.',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300))
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Merida();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 150),
              const Expanded(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 70,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _pagina4() {
    return SizedBox(
      child: Stack(
        children: <Widget>[
          _backgroundimage(
              urlImage:
                  'https://th.bing.com/th/id/R.ba4b7baa74b8e7ea2212db163d37dafe?rik=uFo9KiDuYNNH0Q&pid=ImgRaw&r=0&sres=1&sresct=1'),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.9]),
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 110.0),
                const Text.rich(
                  TextSpan(
                    text: "Guárico",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            '\nSe ubica en el centro venezolano, específicamente en la región de los llanos. Este estado se conoce por su alto índice en la actividad ganadera.\n\nDebido a la ganadería, la comida típica del estado Guárico se caracteriza por la presencia de la carne, el pollo y la gallina, los cuales pasan a formar parte de los ingredientes principales de los platos típicos del estado Guárico',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Guarico();
                        }));
                      },
                      child: Animator<double>(
                        duration: const Duration(milliseconds: 1000),
                        cycles: 0,
                        curve: Curves.easeInOut,
                        tween: Tween<double>(begin: 15.0, end: 50.0),
                        builder: (context, animatorState, child) => Icon(
                          Icons.room,
                          color: Colors.white,
                          size: animatorState.value * 1,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 150),
                const Expanded(
                    child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 70,
                  color: Colors.white,
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _pagina5() {
    return SizedBox(
      child: Stack(
        children: <Widget>[
          _backgroundimage(
              urlImage:
                  'https://i.pinimg.com/736x/ec/a1/4b/eca14b8f6d15d822cdb45372da16e9a9--venezuela.jpg'),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.9]),
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 110.0),
                const Text.rich(
                  TextSpan(
                    text: "Apure",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            '\nSe encuentra ubicado en los llanos. Su gastronomía es exquisita y muy especial, ya que combina las más antiguas tradiciones entre las comidas típicas del estado Apure, haciendo deleitar a sus habitantes y a los turistas de una gran variedad de opciones gastronómicas en cada plato.\n\nAlgo que es muy interesante es que los platos típicos del estado Apure es que se componen de ingredientes y alimentos proporcionados por el mismo llano y los ríos que atraviesan el estado. Es así como la comida típica de este estado venezolano se caracteriza por presentar exquisiteces criollas.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Apure();
                        }));
                      },
                      child: Animator<double>(
                        duration: const Duration(milliseconds: 1000),
                        cycles: 0,
                        curve: Curves.easeInOut,
                        tween: Tween<double>(begin: 15.0, end: 50.0),
                        builder: (context, animatorState, child) => Icon(
                          Icons.room,
                          color: Colors.white,
                          size: animatorState.value * 1,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 1),
                const Expanded(
                    child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 70,
                  color: Colors.white,
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _pagina6() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/R.4b15f8e1c6fc525b240c623b8b34c09b?rik=gJ8fkYL9PSkTLA&pid=ImgRaw&r=0&sres=1&sresct=1'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.5]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 150),
              const Text.rich(
                TextSpan(
                  text: "Barinas",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nEs uno de los estados del llano de Venezuela, su gastronomía es sencilla pero muy arraigada en la cultura del país. Cuando conozcas las comidas típicas del Estado Barinas, querrás también conocer el estado y probarlas',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Barinas();
                        }));
                      },
                      child: Animator<double>(
                        duration: const Duration(milliseconds: 1000),
                        cycles: 0,
                        curve: Curves.easeInOut,
                        tween: Tween<double>(begin: 15.0, end: 50.0),
                        builder: (contex, animatorState, child) => Icon(
                          Icons.room,
                          color: Colors.white,
                          size: animatorState.value * 1,
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 180),
              const Expanded(
                  child: Icon(
                Icons.keyboard_arrow_down,
                size: 70,
                color: Colors.white,
              ))
            ],
          ),
        )
      ],
    );
  }

  Widget _pagina7() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://www.fotopaises.com/Fotos-Paises/t1024/2007/3/22/3566_1174645839.jpg?pint=1'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 0.8],
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Bolívar',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            '\nEs el estado más grande, tanto que contiene más del 25% del territorio total del país. Se encuentra localizado al suroriente de Venezuela en la región Guyana. Las comidas típicas del estado Bolívar, son muy variadas, pues es proporcional a la extensión del país y a la combinación de las distintas culturas que se han encontrado en el estado.\n\nAdemás de variada la gastronomía, como extenso su territorio, se caracteriza por basarse en los productos de la misma zona, así en los platos típicos podrás ver cómo predominan el casabe, que es preparado de la yuca, también el pescado de río y el merey, del cual se preparan una serie de dulces y turrones, entre otros alimentos.',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 15))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Bolivar();
                        }));
                      },
                      child: Animator<double>(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOut,
                        cycles: 0,
                        tween: Tween<double>(begin: 15.0, end: 50.0),
                        builder: (context, animatorState, child) => Icon(
                          Icons.room,
                          color: Colors.white,
                          size: animatorState.value * 1,
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 1),
              const Expanded(
                  child: Icon(
                Icons.keyboard_arrow_down,
                size: 70,
                color: Colors.white,
              ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina8() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/R.29e72b940c3208edb33761b1f5794e42?rik=7K0A7I%2b9wQ1PjA&pid=ImgRaw&r=0'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Portuguesa',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nes un estado venezolano que tiene a Ganare como capital, el nombre de este estado se debe al río portuguesa, ya que tiene una gran presencia y relevancia en la región.\n\nEl estado portuguesa está situado en la región centro-occidental del país y es conocido como “el granero de Venezuela” debido a su gran producción agrícola.\n\nEs por ello que los platos típicos del estado portuguesa reciben la influencia a nivel gastronómico de la producción agrícola, y además también está influenciada por la gastronomía criolla de los llanos venezolanos.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Portuguesa();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                      cycles: 0,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              const Expanded(
                  child: Icon(
                Icons.keyboard_arrow_down,
                size: 70,
                color: Colors.white,
              ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina9() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/R.06c2590f6dc004d9e900a782c2605fcb?rik=6VMucvUWaF8Aug&pid=ImgRaw&r=0&sres=1&sresct=1'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: " Zulia",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nEs uno de los 23 estados que forman el país de Venezuela y está situado en el Noreste de este gran país. Al igual que el estado Bolívar, este es uno de los más poblados de Venezuela, teniendo una población cercana a los 4 millones de habitantes. La ciudad más grande de todo el país de Venezuela (Maracaibo) se encuentra dentro de este estado.\n\nEntre los ingredientes principales de este estado de Venezuela se encuentran: el plátano, el coco, el pescado y la carne roja.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Zulia();
                      }));
                    },
                    child: Animator<double>(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOut,
                        cycles: 0,
                        tween: Tween<double>(begin: 15.0, end: 50.0),
                        builder: (context, animatorState, child) => Icon(
                              Icons.room,
                              color: Colors.white,
                              size: animatorState.value * 1,
                            )),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _pagina10() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://www.notilogia.com/wp-content/uploads/2015/11/Matur%C3%ADn-Monagas.jpg'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Monagas',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nMonagas es un estado que se ubica en la región nororiental de Venezuela. En cuanto a sus límites, limita por el este con el estado Delta Amacuro y el Océano Atlántico, por el sur con el estado Bolívar, por el oeste con el estado Anzoátegui y por el norte con el estado Sucre. Es de gran importancia para el país debido al desarrollo industrial que ha alcanzado.\n\nCuenta con una superficie de 28.900 Km2 que representa el 3,17 % del territorio Nacional. Es el noveno estado con mayor superficie del país.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Monagas();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              const Expanded(
                  child: Icon(
                Icons.keyboard_arrow_down,
                size: 70,
                color: Colors.white,
              ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina11() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://i.pinimg.com/originals/99/92/b2/9992b26df6afc600622a91a26440d142.jpg'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Sucre',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\n El estado Sucre es un estado costero de Venezuela, y está situado en la zona nororiental. Es su localización, lo que le da a la comida típica del estado Sucre una gran variedad. Y sus alimentos principalmente provienen del mar. El río más importante del estado es el río Manzanares. Su capital es Cumaná.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Sucre();
                    }));
                  },
                  child: Animator<double>(
                    duration: const Duration(milliseconds: 1000),
                    cycles: 0,
                    curve: Curves.easeInOut,
                    tween: Tween<double>(begin: 15.0, end: 50.0),
                    builder: (context, animaterState, child) => Icon(
                      Icons.room,
                      color: Colors.white,
                      size: animaterState.value * 1,
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 180),
              const Expanded(
                child: Icon(Icons.keyboard_arrow_down,
                    size: 70, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina12() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/OIP.pAZwsPevjtP3oyZ3zKl94AHaE8?pid=ImgDet&rs=1'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Lara',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\n El estado Lara se ubica en la zona norte de Venezuela, pero no toca la costa, sino que está delimitado por el estado Falcón, el estado Yaracuy, el estado Portuguesa, el estado Trujillo y el estado Zulia. Su población es bastante densa, es así como está entre los primeros estados con mayor población, ocupando el cuarto lugar, siendo superado por los estados Zulia, Miranda y Carabobo.\n\nEn cuanto a su gastronomía es muy especial, ya que los habitantes de este estado sí que tienen una sazón peculiar. Es por ello que las comidas típicas de Lara se caracterizan por su gran variedad, son de las más variadas en todo el territorio venezolano.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Lara();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              const Expanded(
                child: Icon(Icons.keyboard_arrow_down,
                    size: 70, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina13() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://image.jimcdn.com/app/cms/image/transf/none/path/sc4a7794bd9c8969e/image/ibfb60f124e9b5a42/version/1433785952/image.jpg'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.99]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Yaracuy',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nlas comidas típicas del estado Yaracuy son de las que más tradición tiene en cuanto a historia y contexto. En primer lugar, está la agricultura como la característica más predominante, ya que es la principal actividad económica, y esto influye mucho en los platos típicos del estado Yaracuy.\n\nEs así como entre los ingredientes presentes en la gastronomía yaracuyana predominan las batatas, pimentón, aguacates, maní, palma aceitera y caña de azúcar. En cuanto al azúcar, un dato importantísimo es que en el estado Yaracuy están dos de las centrales azucareras más grandes de la región Centro-norte: Chivacoa y Yaritagua.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Yaracuy();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              const Expanded(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 70,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina14() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage: 'https://i.ytimg.com/vi/hjZn5-HeRRg/maxresdefault.jpg'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Trujillo',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\n es uno de los 23 estados de Venezuela. Su capital es Trujillo pero la ciudad más grande es Valera. El estado se divide en 20 municipios y 93 parroquias. El estado de Trujillo tiene una superficie total de 7.198 km² y tiene una población censada en 2011 de 686.367.\n\nDe manera que las comidas típicas de Trujillo pueden presentar variados ingredientes, pero también hay otras que durante mucho tiempo se han posicionado manifestándose como un punto culinario trujillano, entre esas comidas se puede mencionar el mojo trujillano.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Trujillo();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              const Expanded(
                  child: Icon(
                Icons.keyboard_arrow_down,
                size: 70,
                color: Colors.white,
              ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina15() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://i.pinimg.com/originals/d9/1a/3b/d91a3b3ebc46c75194ed5ef1d0b2da2e.jpg'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Vargas',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nEl estado Vargas está ubicado muy cerca de Caracas, en el Litoral Central de Venezuela, se caracteriza por ser una tierra de contrastes, con la calidez de las playas caribeñas y el frío de sus pueblos de montaña. Por eso las comidas típicas del estado Vargas son muy singulares y ricas.\n\nEste estado tiene una amplia costa frente al mar Caribe y su poblado está asentado al pie del Parque Nacional Waraira Repano, de donde se desprende la denominada Fila Maestra.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Vargas();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              const Expanded(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 70,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina16() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/R.30d1776588a70e1e2d94fe6ba7cde534?rik=DmhCxMkEqIzmGA&pid=ImgRaw&r=0'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Aragua',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nUbicado al norte de Venezuela, en la costa del mar Caribe, el estado Aragua es uno de los que posee menos territorio, su población apenas asciende al millón y medio de habitantes, siendo así el sexto entre los estados con mayor población en Venezuela.\n\nEl estado Aragua es uno de los más inusuales en Venezuela respecto a su gastronomía. No posee comidas autóctonas, sin embargo, existen comidas típicas del estado Aragua que, aunque no son autóctonos son parte de la dieta diaria y de las tradiciones que ha adoptado el estado.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Aragua();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              const Expanded(
                  child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 70,
              ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina17() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/R.19695dd7ca8e4ab90c63f07752e6af9c?rik=ISb0LUJ0AbHujA&riu=http%3a%2f%2f1.bp.blogspot.com%2f-n1zPeGhC0UA%2fVP5L6Nt3o3I%2fAAAAAAAAARY%2fylnPfOac0wY%2fs1600%2f4amazonas24613mm.jpg&ehk=bxlDir1%2fwn86H9ojrC15kFw%2bcU3AAbgwlSVaV%2fmcE3c%3d&risl=&pid=ImgRaw&r=0'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Amazona',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nEl estado Amazonas está ubicado en el sur de la República Bolivariana de Venezuela, es uno de los veintitrés estados del país. Al norte está limitando con Apura y Bolívar, y Brasil delimita su territorio al este y el sur. Este estado tiene tradiciones propias, que lo diferencian de otros, entre ellas están las comidas típicas del estado Amazonas.\n\nEn el territorio de Amazonas, se pueden encontrar restaurantes con las especialidades o platos típicos del estado Amazonas, que van desde platos exóticos y raros como la tortuga servida en su carapacho, hasta salsas extrañas como la catara.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Amazona();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              const Expanded(
                  child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 70,
              ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina18() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://tayronatourcolombia.com/wp-content/uploads/2021/05/playa-del-amor-gayraca-1-1024x1024.jpg'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Miranda',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nEl Estado Miranda está ubicado en la zona del Litoral Central de Venezuela, siendo así una región en la que principalmente se cosecha el plátano, cambur, papelón y coco. Además, puede definirse como otra de las principales actividades económicas la pesca. Esto ha hecho que en la comida típica del estado Miranda predomine entre sus platos típicos el pescado como alimento principal, al igual que los nombrados anteriormente.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Miranda();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              const Expanded(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 70,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina19() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/R.c11d585d6025427e94c8f49cf839fd0c?rik=crss%2f7%2foINr3FA&pid=ImgRaw&r=0'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 150),
              const Text.rich(
                TextSpan(
                    text: 'Anzoátegui',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              '\nEl estado Anzoátegui es uno de los veinticuatro estados que junto al Distrito Capital forman parte de Venezuela. Contiene una serie de tradiciones, que abarcan desde bailes hasta la gastronomía, con comidas típicas del estado Anzoátegui que conserva la herencia de los ancestros.',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300))
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Anzoategui();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 150),
              const Expanded(
                  child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 70,
              ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina20() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/R.924a72be0f76aa3db640ffcd5ab8986f?rik=I6SF0YgPQ3E2Nw&riu=http%3a%2f%2fwww.notilogia.com%2fwp-content%2fuploads%2f2015%2f11%2fcarabobo-896x600.jpg&ehk=vUyslChuYWrxUlOcI6iA1O5nsSwaZDzJ2cCsLhr2irM%3d&risl=&pid=ImgRaw&r=0'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Carabobo',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nEl estado Carabobo está ubicado en la región central de Venezuela, su gastronomía es muy rica y variada, las comidas típicas del estado Carabobo pueden ser muy diferentes una a la otra, aunque predominan ciertos elementos de forma general, esto se debe a que allí confluyen las distintas culturas que han influenciado en la región desde la época de la Colonia.\n\nEn cada una de las poblaciones del extenso territorio del estado Carabobo se pueden degustar platos típicos del estado Carabobo que son exquisitos.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Carabobo();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              const Expanded(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 70,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina21() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/R.409d011ef0973bd334ca90cb12d5844b?rik=31V2aMp62vqCvQ&pid=ImgRaw&r=0'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Cojedes',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nEstá situado en el centro-noroeste del país, su capital es San Carlos. Está dentro de lo que se conoce como Llanos Centrales, en el que también se incluye en estado Guárico. Posee una gastronomía con comidas típicas del estado Cojedes que se distinguen en sabor, aun cuando muchas se realizan en otros estados de los llanos.\n\nLa variedad en su gastronomía se debe también a la influencia que recibe de otros estados, ya que está rodeado por los estados Yaracuy, Carabobo, Guárico, Barinas, Portuguesa y Lara.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Cojedes();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (contex, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 70),
              const Expanded(
                  child: Icon(
                Icons.keyboard_arrow_down,
                size: 70,
                color: Colors.white,
              ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina22() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/R.b8aa5e0e751584b33cc9aeb01f5a2020?rik=5bPQWS6suK1nQg&riu=http%3a%2f%2fwww.venezuelatuya.com%2f902%2fimg%2f6840740258.jpg&ehk=S%2frB%2bN7LErkeOhg7Qj5wYxKTxQYTDcrqjlU6O%2bTvYlw%3d&risl=&pid=ImgRaw&r=0'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: ' Falcón',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nLa geografía del estado Falcón se caracteriza por ser variada, al igual que su gastronomía, razón por la que las comidas típicas del estado Falcón pueden sorprender por la diferencia entre cada plato.\n\nEs así como entre sus especialidades se pueden encontrar productos extraídos del mar, como por ejemplo los carites, jureles, cunas, pargos y cazones, así como camarones y calamares. Con los pescados se realizan diversos platos que van desde sancochos, de los guisos, pescados fritos y en escabeche.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Falcon();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              const Expanded(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 70,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina23() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://s.yimg.com/uu/api/res/1.2/ngclzZq98dOuJpmIxPFUhw--~B/aD0yMDAwO3c9MzAwMDtzbT0xO2FwcGlkPXl0YWNoeW9u/https://media.zenfs.com/en/bloomberg_politics_602/95f1e86c42ea5f0d8e609fabec33d7e8'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Distrito Capitals',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nEste territorio antiguamente se conocía como Distrito Federal. Está ubicado en la zona del Litoral Central, es decir, que pertenece al centro-norte del país. Al Distrito Capital pertenece la ciudad de Caracas, que es la capital de Venezuela. Y es en este territorio en donde se encuentran los Poderes Públicos Nacionales. Tiene una superficie de 433 km² y contiene la parte occidental del Distrito Metropolitano de Caracas. Estas características le han permitido anexar a su gastronomía una serie de ingredientes y mezclas de las que han resultados interesantes platos típicos en el Distrito Capital, que hoy por hoy son hasta tradicionales en las mesas de las familias venezolanas.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return DistritoCapital();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              const Expanded(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 70,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina24() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://live.staticflickr.com/3506/3946238195_3a2ee238df_b.jpg'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.9]),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 150),
              const Text.rich(
                TextSpan(
                  text: 'Nueva Esparta',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nEn primer lugar, delimitemos geográficamente este estado, ya que su ubicación influye mucho en su gastronomía. El estado de Nueva Esparta está ubicado en la región insular de Venezuela. Su principal actividad económica, debido a su ubicación, es el turismo, y esta actividad influye a la vez en su gastronomía ya que como van a poder ver en las comidas típicas del estado Nueva Esparta, son unas comidas muy singulares',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return NuevaEsparta();
                    }));
                  },
                  child: Animator<double>(
                    duration: const Duration(milliseconds: 1000),
                    cycles: 0,
                    curve: Curves.easeInOut,
                    tween: Tween<double>(begin: 15.0, end: 50.0),
                    builder: (context, animatorState, child) => Icon(
                      Icons.room,
                      color: Colors.white,
                      size: animatorState.value * 1,
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 1),
              const Expanded(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 70,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina25() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://live.staticflickr.com/8315/7941897940_64b2b65f4d_b.jpg'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Delta Amacuro',
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nEl estado Delta Amacuro, posee una gastronomía muy singular, esto se debe a que conserva muchas tradiciones originarias, que a su vez se han mezclado con las diversas culturas que se han encontrado en el territorio. Es así como predominan mayormente la influencia de las culturas del Warao, los guyaneses y los margariteños.',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return CapitalDelta();
                    }));
                  },
                  child: Animator<double>(
                    duration: const Duration(milliseconds: 1000),
                    cycles: 0,
                    curve: Curves.easeInOut,
                    tween: Tween<double>(begin: 15.0, end: 50.0),
                    builder: (context, animatorState, child) => Icon(
                      Icons.room,
                      color: Colors.white,
                      size: animatorState.value * 1,
                    ),
                  ),
                )
              ]),
              const SizedBox(height: 100),
              const Expanded(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 70,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina26() {
    return Stack(
      children: <Widget>[
        _backgroundimage(
            urlImage:
                'https://th.bing.com/th/id/R.995fee9d90eb1317c54dde9c34333e2b?rik=YAMWFdCDDkHREQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f-VwD5LdxKfX4%2fVaMiCqpyKUI%2fAAAAAAAADNc%2fxaPEqhpBfTY%2fs1600%2fP7120034.JPG&ehk=FT23%2bX5o1Kl3XJZzTRA38cMQERu8ZHcGcFICCsoXNJY%3d&risl=&pid=ImgRaw&r=0'),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.transparent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 110),
              const Text.rich(
                TextSpan(
                  text: 'Tachira',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nEl estado Táchira es otro estado andino de Venezuela, su cultura es muy similar a la del estado Mérida, al igual que la gastronomía, pues por ser parte de la región andina las comidas típicas del estado Táchira suelen ser comunes en Mérida, aunque leves breves variaciones. Ahora bien, sí hay platos que son originales de este estado.\n\nEn cuanto a su ubicación geográfica, el estado Táchira se encuentra en el oeste de Venezuela y limita con varios estados venezolanos, siendo el estado Zulia uno de estos. Además, limita también con Colombia. Entre sus principales ciudades se encuentran San Cristóbal, Táriba, Rubio, San Juan de Colón y San Antonio del Táchira.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Tachira();
                      }));
                    },
                    child: Animator<double>(
                      duration: const Duration(milliseconds: 1000),
                      cycles: 0,
                      curve: Curves.easeInOut,
                      tween: Tween<double>(begin: 15.0, end: 50.0),
                      builder: (context, animatorState, child) => Icon(
                        Icons.room,
                        color: Colors.white,
                        size: animatorState.value * 1,
                      ),
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 70,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
