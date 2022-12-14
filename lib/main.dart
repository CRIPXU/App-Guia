import 'package:animator/animator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:guiavenezuela/capital_amazona.dart';
import 'package:guiavenezuela/capital_anzoategui.dart';
import 'package:guiavenezuela/capital_apure.dart';
import 'package:guiavenezuela/capital_aragua.dart';
import 'package:guiavenezuela/capital_barinas.dart';
import 'package:guiavenezuela/capital_bolivar.dart';
import 'package:guiavenezuela/capital_carabobo.dart';
import 'package:guiavenezuela/capital_cojedes.dart';
import 'package:guiavenezuela/capital_delta.dart';
import 'package:guiavenezuela/capital_distritocapital.dart';
import 'package:guiavenezuela/capital_falcon.dart';
import 'package:guiavenezuela/capital_guarico.dart';
import 'package:guiavenezuela/capital_lara.dart';
import 'package:guiavenezuela/capital_merida.dart';
import 'package:guiavenezuela/capital_miranda.dart';
import 'package:guiavenezuela/capital_monagas.dart';
import 'package:guiavenezuela/capital_nuevaesparta.dart';
import 'package:guiavenezuela/capital_portuguesa.dart';
import 'package:guiavenezuela/capital_sucre.dart';
import 'package:guiavenezuela/capital_tachira.dart';
import 'package:guiavenezuela/capital_trujillo.dart';
import 'package:guiavenezuela/capital_vargas.dart';
import 'package:guiavenezuela/capital_yaracuy.dart';
import 'package:guiavenezuela/capital_zulia.dart';

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
      home: const PageLoginGuideAr(),
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
          _pagina17(), //Amazona
          _pagina19(), //Anzoategui
          _pagina5(), //Apure
          _pagina16(), //Aragua
          _pagina6(), //Barinas
          _pagina7(), //Bolivar
          _pagina20(), //Carabobo
          _pagina21(), //Cojedes
          _pagina25(), //Delta Amacuro
          _pagina23(), //Distrito Capital
          _pagina22(), //Falcon
          _pagina4(), //Guarico
          _pagina12(), //Lara
          _pagina3(), //M??rida
          _pagina18(), //Miranda
          _pagina10(), //Monagas
          _pagina24(), //Nueva Esparta
          _pagina8(), //Portuguesa
          _pagina11(), //Sucre
          _pagina14(), //Trujillo
          _pagina26(), //Tachira
          _pagina15(), //Vargas
          _pagina13(), //Yaracuy
          _pagina9(), //Zulia
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
          SizedBox(height: 1),
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
                      "En esta aplicaci??n podr??s encontrar informaci??n detalla de las regiones de Venezuela y sus atractivos tur??sticos. Esta gu??a cuenta con informaci??n ??til para el viajero.",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 1),
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
                    text: 'M??rida',
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              '\nEst?? compuesto de tierras bajas y altas, es decir, valles y monta??as, y en ambos casos la ganader??a predomina. Esta caracter??stica tan peculiar del estado ha permitido el surgimiento de una serie de queser??as artesanales, en las que se pueden encontrar cuajadas, sueros, y quesos de pasta blanda, como el queso blanco suave, o quesos de pasta semidura, como el ahumado, o dura como los quesos tipo provolone (o provoandino).\n\nAhora bien, a pesar de que la comida t??pica del estado M??rida se basa fundamentalmente en la ganader??a, es importante tomar en cuenta que es bastante variada y se caracteriza adem??s por m??todos muy singulares de preparaci??n.',
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
                    text: "Gu??rico",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            '\nSe ubica en el centro venezolano, espec??ficamente en la regi??n de los llanos. Este estado se conoce por su alto ??ndice en la actividad ganadera.\n\nDebido a la ganader??a, la comida t??pica del estado Gu??rico se caracteriza por la presencia de la carne, el pollo y la gallina, los cuales pasan a formar parte de los ingredientes principales de los platos t??picos del estado Gu??rico',
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
                        '\nSe encuentra ubicado en los llanos. Su gastronom??a es exquisita y muy especial, ya que combina las m??s antiguas tradiciones entre las comidas t??picas del estado Apure, haciendo deleitar a sus habitantes y a los turistas de una gran variedad de opciones gastron??micas en cada plato.\n\nAlgo que es muy interesante es que los platos t??picos del estado Apure es que se componen de ingredientes y alimentos proporcionados por el mismo llano y los r??os que atraviesan el estado. Es as?? como la comida t??pica de este estado venezolano se caracteriza por presentar exquisiteces criollas.',
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
                          '\nEs uno de los estados del llano de Venezuela, su gastronom??a es sencilla pero muy arraigada en la cultura del pa??s. Cuando conozcas las comidas t??picas del Estado Barinas, querr??s tambi??n conocer el estado y probarlas',
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
                  text: 'Bol??var',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            '\nEs el estado m??s grande, tanto que contiene m??s del 25% del territorio total del pa??s. Se encuentra localizado al suroriente de Venezuela en la regi??n Guyana. Las comidas t??picas del estado Bol??var, son muy variadas, pues es proporcional a la extensi??n del pa??s y a la combinaci??n de las distintas culturas que se han encontrado en el estado.\n\nAdem??s de variada la gastronom??a, como extenso su territorio, se caracteriza por basarse en los productos de la misma zona, as?? en los platos t??picos podr??s ver c??mo predominan el casabe, que es preparado de la yuca, tambi??n el pescado de r??o y el merey, del cual se preparan una serie de dulces y turrones, entre otros alimentos.',
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
                          '\nes un estado venezolano que tiene a Ganare como capital, el nombre de este estado se debe al r??o portuguesa, ya que tiene una gran presencia y relevancia en la regi??n.\n\nEl estado portuguesa est?? situado en la regi??n centro-occidental del pa??s y es conocido como ???el granero de Venezuela??? debido a su gran producci??n agr??cola.\n\nEs por ello que los platos t??picos del estado portuguesa reciben la influencia a nivel gastron??mico de la producci??n agr??cola, y adem??s tambi??n est?? influenciada por la gastronom??a criolla de los llanos venezolanos.',
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
                          '\nEs uno de los 23 estados que forman el pa??s de Venezuela y est?? situado en el Noreste de este gran pa??s. Al igual que el estado Bol??var, este es uno de los m??s poblados de Venezuela, teniendo una poblaci??n cercana a los 4 millones de habitantes. La ciudad m??s grande de todo el pa??s de Venezuela (Maracaibo) se encuentra dentro de este estado.\n\nEntre los ingredientes principales de este estado de Venezuela se encuentran: el pl??tano, el coco, el pescado y la carne roja.',
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
                          '\nMonagas es un estado que se ubica en la regi??n nororiental de Venezuela. En cuanto a sus l??mites, limita por el este con el estado Delta Amacuro y el Oc??ano Atl??ntico, por el sur con el estado Bol??var, por el oeste con el estado Anzo??tegui y por el norte con el estado Sucre. Es de gran importancia para el pa??s debido al desarrollo industrial que ha alcanzado.\n\nCuenta con una superficie de 28.900 Km2 que representa el 3,17 % del territorio Nacional. Es el noveno estado con mayor superficie del pa??s.',
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
                          '\n El estado Sucre es un estado costero de Venezuela, y est?? situado en la zona nororiental. Es su localizaci??n, lo que le da a la comida t??pica del estado Sucre una gran variedad. Y sus alimentos principalmente provienen del mar. El r??o m??s importante del estado es el r??o Manzanares. Su capital es Cuman??.',
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
                          '\n El estado Lara se ubica en la zona norte de Venezuela, pero no toca la costa, sino que est?? delimitado por el estado Falc??n, el estado Yaracuy, el estado Portuguesa, el estado Trujillo y el estado Zulia. Su poblaci??n es bastante densa, es as?? como est?? entre los primeros estados con mayor poblaci??n, ocupando el cuarto lugar, siendo superado por los estados Zulia, Miranda y Carabobo.\n\nEn cuanto a su gastronom??a es muy especial, ya que los habitantes de este estado s?? que tienen una saz??n peculiar. Es por ello que las comidas t??picas de Lara se caracterizan por su gran variedad, son de las m??s variadas en todo el territorio venezolano.',
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
                          '\nlas comidas t??picas del estado Yaracuy son de las que m??s tradici??n tiene en cuanto a historia y contexto. En primer lugar, est?? la agricultura como la caracter??stica m??s predominante, ya que es la principal actividad econ??mica, y esto influye mucho en los platos t??picos del estado Yaracuy.\n\nEs as?? como entre los ingredientes presentes en la gastronom??a yaracuyana predominan las batatas, piment??n, aguacates, man??, palma aceitera y ca??a de az??car. En cuanto al az??car, un dato important??simo es que en el estado Yaracuy est??n dos de las centrales azucareras m??s grandes de la regi??n Centro-norte: Chivacoa y Yaritagua.',
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
                          '\n es uno de los 23 estados de Venezuela. Su capital es Trujillo pero la ciudad m??s grande es Valera. El estado se divide en 20 municipios y 93 parroquias. El estado de Trujillo tiene una superficie total de 7.198 km?? y tiene una poblaci??n censada en 2011 de 686.367.\n\nDe manera que las comidas t??picas de Trujillo pueden presentar variados ingredientes, pero tambi??n hay otras que durante mucho tiempo se han posicionado manifest??ndose como un punto culinario trujillano, entre esas comidas se puede mencionar el mojo trujillano.',
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
                          '\nEl estado Vargas est?? ubicado muy cerca de Caracas, en el Litoral Central de Venezuela, se caracteriza por ser una tierra de contrastes, con la calidez de las playas caribe??as y el fr??o de sus pueblos de monta??a. Por eso las comidas t??picas del estado Vargas son muy singulares y ricas.\n\nEste estado tiene una amplia costa frente al mar Caribe y su poblado est?? asentado al pie del Parque Nacional Waraira Repano, de donde se desprende la denominada Fila Maestra.',
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
                          '\nUbicado al norte de Venezuela, en la costa del mar Caribe, el estado Aragua es uno de los que posee menos territorio, su poblaci??n apenas asciende al mill??n y medio de habitantes, siendo as?? el sexto entre los estados con mayor poblaci??n en Venezuela.\n\nEl estado Aragua es uno de los m??s inusuales en Venezuela respecto a su gastronom??a. No posee comidas aut??ctonas, sin embargo, existen comidas t??picas del estado Aragua que, aunque no son aut??ctonos son parte de la dieta diaria y de las tradiciones que ha adoptado el estado.',
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
                          '\nEl estado Amazonas est?? ubicado en el sur de la Rep??blica Bolivariana de Venezuela, es uno de los veintitr??s estados del pa??s. Al norte est?? limitando con Apura y Bol??var, y Brasil delimita su territorio al este y el sur. Este estado tiene tradiciones propias, que lo diferencian de otros, entre ellas est??n las comidas t??picas del estado Amazonas.\n\nEn el territorio de Amazonas, se pueden encontrar restaurantes con las especialidades o platos t??picos del estado Amazonas, que van desde platos ex??ticos y raros como la tortuga servida en su carapacho, hasta salsas extra??as como la catara.',
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
                          '\nEl Estado Miranda est?? ubicado en la zona del Litoral Central de Venezuela, siendo as?? una regi??n en la que principalmente se cosecha el pl??tano, cambur, papel??n y coco. Adem??s, puede definirse como otra de las principales actividades econ??micas la pesca. Esto ha hecho que en la comida t??pica del estado Miranda predomine entre sus platos t??picos el pescado como alimento principal, al igual que los nombrados anteriormente.',
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
                    text: 'Anzo??tegui',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              '\nEl estado Anzo??tegui es uno de los veinticuatro estados que junto al Distrito Capital forman parte de Venezuela. Contiene una serie de tradiciones, que abarcan desde bailes hasta la gastronom??a, con comidas t??picas del estado Anzo??tegui que conserva la herencia de los ancestros.',
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
                          '\nEl estado Carabobo est?? ubicado en la regi??n central de Venezuela, su gastronom??a es muy rica y variada, las comidas t??picas del estado Carabobo pueden ser muy diferentes una a la otra, aunque predominan ciertos elementos de forma general, esto se debe a que all?? confluyen las distintas culturas que han influenciado en la regi??n desde la ??poca de la Colonia.\n\nEn cada una de las poblaciones del extenso territorio del estado Carabobo se pueden degustar platos t??picos del estado Carabobo que son exquisitos.',
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
                          '\nEst?? situado en el centro-noroeste del pa??s, su capital es San Carlos. Est?? dentro de lo que se conoce como Llanos Centrales, en el que tambi??n se incluye en estado Gu??rico. Posee una gastronom??a con comidas t??picas del estado Cojedes que se distinguen en sabor, aun cuando muchas se realizan en otros estados de los llanos.\n\nLa variedad en su gastronom??a se debe tambi??n a la influencia que recibe de otros estados, ya que est?? rodeado por los estados Yaracuy, Carabobo, Gu??rico, Barinas, Portuguesa y Lara.',
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
                  text: ' Falc??n',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\nLa geograf??a del estado Falc??n se caracteriza por ser variada, al igual que su gastronom??a, raz??n por la que las comidas t??picas del estado Falc??n pueden sorprender por la diferencia entre cada plato.\n\nEs as?? como entre sus especialidades se pueden encontrar productos extra??dos del mar, como por ejemplo los carites, jureles, cunas, pargos y cazones, as?? como camarones y calamares. Con los pescados se realizan diversos platos que van desde sancochos, de los guisos, pescados fritos y en escabeche.',
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
                          '\nEste territorio antiguamente se conoc??a como Distrito Federal. Est?? ubicado en la zona del Litoral Central, es decir, que pertenece al centro-norte del pa??s. Al Distrito Capital pertenece la ciudad de Caracas, que es la capital de Venezuela. Y es en este territorio en donde se encuentran los Poderes P??blicos Nacionales. Tiene una superficie de 433 km?? y contiene la parte occidental del Distrito Metropolitano de Caracas. Estas caracter??sticas le han permitido anexar a su gastronom??a una serie de ingredientes y mezclas de las que han resultados interesantes platos t??picos en el Distrito Capital, que hoy por hoy son hasta tradicionales en las mesas de las familias venezolanas.',
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
                          '\nEn primer lugar, delimitemos geogr??ficamente este estado, ya que su ubicaci??n influye mucho en su gastronom??a. El estado de Nueva Esparta est?? ubicado en la regi??n insular de Venezuela. Su principal actividad econ??mica, debido a su ubicaci??n, es el turismo, y esta actividad influye a la vez en su gastronom??a ya que como van a poder ver en las comidas t??picas del estado Nueva Esparta, son unas comidas muy singulares',
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
                          '\nEl estado Delta Amacuro, posee una gastronom??a muy singular, esto se debe a que conserva muchas tradiciones originarias, que a su vez se han mezclado con las diversas culturas que se han encontrado en el territorio. Es as?? como predominan mayormente la influencia de las culturas del Warao, los guyaneses y los margarite??os.',
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
                          '\nEl estado T??chira es otro estado andino de Venezuela, su cultura es muy similar a la del estado M??rida, al igual que la gastronom??a, pues por ser parte de la regi??n andina las comidas t??picas del estado T??chira suelen ser comunes en M??rida, aunque leves breves variaciones. Ahora bien, s?? hay platos que son originales de este estado.\n\nEn cuanto a su ubicaci??n geogr??fica, el estado T??chira se encuentra en el oeste de Venezuela y limita con varios estados venezolanos, siendo el estado Zulia uno de estos. Adem??s, limita tambi??n con Colombia. Entre sus principales ciudades se encuentran San Crist??bal, T??riba, Rubio, San Juan de Col??n y San Antonio del T??chira.',
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
