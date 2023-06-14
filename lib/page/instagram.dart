import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guiavenezuela/estados/capital_falcon.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

//VARIABLE

const List listaPersona = [
  {
    "nombre": "Lucas Ivani",
    "usuario": "ivani3434",
    "live": false,
    "vista": false,
    "url_foto_perfil":
        "https://i.pinimg.com/originals/ec/ab/4c/ecab4ca0fc7032b0f8ddb7ca8e4506d4.jpg",
    "dashes": 1,
  },
  {
    "nombre": "Leonel Messi",
    "usuario": "leonelmesis10",
    "live": true,
    "vista": false,
    "url_foto_perfil":
        "https://i.pinimg.com/564x/a4/11/72/a411729989ac4a7b06b5d0f116adf0c5.jpg",
    "dashes": 14,
    "url_image_post":
        "https://i.pinimg.com/564x/b3/9b/a8/b39ba8d01f9f4cc9eb6f543b7d0e7452.jpg",
  },
  {
    "nombre": "Leonela Ibanes",
    "usuario": "leonela3231",
    "live": true,
    "vista": false,
    "url_foto_perfil":
        "https://i.pinimg.com/564x/3a/70/76/3a7076573c23a077263a01e3c7874aed.jpg",
    "dashes": 2,
    "url_image_post":
        "https://i.pinimg.com/564x/43/ba/94/43ba9468aa1159e25ad89635d5a9f277.jpg",
  },
  {
    "nombre": "Matia Cat",
    "usuario": "matielda753",
    "live": false,
    "vista": false,
    "url_foto_perfil":
        "https://i.pinimg.com/564x/97/9c/27/979c276fa9539265ebcb05ab0b68bda8.jpg",
    "dashes": 5,
    "url_image_post":
        "https://i.pinimg.com/564x/61/99/b1/6199b1dea5979adaa3c74757a31fbfdb.jpg",
  },
  {
    "nombre": "Eugennia Suarez",
    "usuario": "eugedehuracan",
    "live": false,
    "vista": false,
    "url_foto_perfil":
        "https://i.pinimg.com/564x/68/f6/62/68f66266c6ddbf701e79abf1632215f9.jpg",
    "dashes": 2,
    "url_image_post":
        "https://i.pinimg.com/564x/39/16/0a/39160a57e090357b618a2af7bf97b666.jpg",
  },
  {
    "nombre": "Jenifer Solange Urquiza",
    "usuario": "jeniurquiza2",
    "live": false,
    "vista": false,
    "url_foto_perfil":
        "https://i.pinimg.com/564x/46/18/00/461800e7fe0b317bd2e2e8dbf0a56b8b.jpg",
    "dashes": 1,
    "url_image_post":
        "https://i.pinimg.com/564x/9e/e1/75/9ee175181b1116b6a5ffe35f10e46ac5.jpg",
  },
  {
    "nombre": "Manuel Albastro",
    "usuario": "manuelbastro93",
    "live": false,
    "vista": false,
    "url_foto_perfil":
        "https://i.pinimg.com/564x/a5/f5/0d/a5f50d9e617ad045fc307467566f9e1b.jpg",
    "dashes": 1,
    "url_image_post":
        "https://i.pinimg.com/564x/66/8c/f1/668cf1267cb06353f68e538e6bfc0912.jpg",
  },
  {
    "nombre": "Maria Lopez",
    "usuario": "mariilopez93",
    "live": false,
    "vista": false,
    "url_foto_perfil":
        "https://i.pinimg.com/564x/a0/cd/da/a0cddad30faca55489b37520be7c1f02.jpg",
    "dashes": 1,
    "url_image_post":
        "https://i.pinimg.com/564x/96/b5/c8/96b5c8b580cbdd62b9bbdced0418b492.jpg",
  },
];

bool isDarkMode = false;
List<Color> colorsGradientInstagram = [
  const Color.fromRGBO(225, 225, 25, 1.0),
  const Color.fromRGBO(25, 25, 225, 1.0),
  const Color.fromRGBO(225, 225, 25, 1.0),
  const Color.fromRGBO(225, 25, 25, 1.0),
];

class InstagramPage extends StatefulWidget {
  const InstagramPage({Key? key}) : super(key: key);

  @override
  State<InstagramPage> createState() => _InstagramPageState();
}

//var
RefreshController _refreshController = RefreshController(initialRefresh: false);

class _InstagramPageState extends State<InstagramPage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //var
    isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: appBar(),
      body: body(context: context),
    );
  }

  // WidgetView

  PreferredSizeWidget appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 2.0,
      automaticallyImplyLeading: false,
      title: Text(
        "Venezuela",
        style: GoogleFonts.atma(
            fontSize: 30.0,
            fontWeight: FontWeight.normal,
            color: Theme.of(context).iconTheme.color),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () => Navigator.pop(context),
            color: Theme.of(context).iconTheme.color),
      ],
    );
  }

  Widget body({required BuildContext context}) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      header: const ClassicHeader(),
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: listaPersona.length,
        itemBuilder: (context, index) => index == 0
            ? listViewHorizontalHistoryImage(context: context)
            : Publication(context: context, obj: listaPersona[index]),
      ),
    );
  }

  // Widget listViewHorizontalHistory({required BuildContext context}) {
  //   double size = 120.0;
  //
  //   return SizedBox(
  //     height: size,
  //     child: ListView.builder(
  //       scrollDirection: Axis.horizontal,
  //       itemCount: listaPersona.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         return index == 0
  //             ? addStory(
  //                 size: size - 40,
  //                 context: context,
  //                 person: listaPersona[index])
  //             : listaPersona[index]["live"] ?? false
  //                 ? LiveStoryCircle(
  //                     size: size - 40,
  //                     color: Colors.redAccent,
  //                     person: listaPersona[index],
  //                     colorCanva: Theme.of(context).canvasColor)
  //                 : StoryCicle(person: listaPersona[index], size: size - 40);
  //       },
  //     ),
  //   );
  // }

  void _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    if (mounted) setState(() {});
    {
      _refreshController.loadComplete();
    }
  }
}

//Publicaciones
class Publication extends StatefulWidget {
  const Publication({
    super.key,
    required this.context,
    required this.obj,
  });

  final BuildContext context;
  final dynamic obj;

  @override
  State<Publication> createState() => _PublicationState();
}

class _PublicationState extends State<Publication> {
  bool like = false;
  bool save = false;
  bool comment = false;

  final List<String> listImages = [
    'https://i.pinimg.com/564x/9e/e1/75/9ee175181b1116b6a5ffe35f10e46ac5.jpg',
    'https://i.pinimg.com/564x/43/ba/94/43ba9468aa1159e25ad89635d5a9f277.jpg',
    'https://i.pinimg.com/564x/9e/e1/75/9ee175181b1116b6a5ffe35f10e46ac5.jpg',
    'images/Amazonas.jpg',
    'https://i.pinimg.com/564x/61/99/b1/6199b1dea5979adaa3c74757a31fbfdb.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                DashedCircle(
                  dashes: widget.obj["dashes"],
                  gradientColor: colorsGradientInstagram,
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: CircleAvatar(
                      // backgroundColor: Theme.of(context).canvasColor,
                      radius: 15.0,
                      backgroundImage: NetworkImage(
                        widget.obj["url_foto_perfil"],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Text(
                  widget.obj["nombre"],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              color: Colors.black12,
              child: CachedNetworkImage(
                fadeInDuration: const Duration(milliseconds: 200),
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.color,
                width: MediaQuery.of(context).size.width,
                imageUrl: widget.obj["url_image_post"] ??
                    "https://i.pinimg.com/564x/77/3c/16/773c1618b809c8ddf1d0064f30220d17.jpg",
                placeholder: (context, urlImage) => Container(
                  color: Colors.grey[300],
                  height: 300,
                ),
                errorWidget: (context, url, error) => Center(
                  child: Container(
                    color: Colors.grey,
                    height: 300,
                    child: const Center(
                      child: Icon(
                        Icons.error_outline_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => setState(() => like = !like),
                      icon: Icon(
                        like
                            ? FontAwesomeIcons.solidHeart
                            : FontAwesomeIcons.heart,
                        color: like ? Colors.red : null,
                      ),
                    ),
                    // IconButton(
                    //   padding:  EdgeInsets.zero,
                    //   onPressed: () => setState(() => comment = !comment),
                    //   icon: Icon(
                    //     comment
                    //         ? FontAwesomeIcons.solidComment
                    //         : FontAwesomeIcons.comment,
                    //     color: comment ? Colors.blueAccent : null,
                    //   ),
                    // ),
                    const SizedBox(width: 12.0),
                    IconButton(
                      padding: const EdgeInsets.all(0.0),
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.comment),
                    ),
                  ],
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => setState(() => save = !save),
                  icon: Icon(
                    save
                        ? FontAwesomeIcons.solidBookmark
                        : FontAwesomeIcons.bookmark,
                    color: save ? Colors.amber : null,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText2,
                children: const <TextSpan>[
                  TextSpan(text: 'Le gusta a'),
                  TextSpan(
                    text: "lixly23",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' y a '),
                  TextSpan(
                    text: '528 personas mas',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                    text: '${widget.obj["usuario"]}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: " Que lindo"),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Ver los 12 comentarios",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 25.0,
                  width: 25.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        widget.obj["url_foto_perfil"],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Agregar comentario",
                      hintStyle: TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 1.0),
            child: Text(
              'Hace 1 dia',
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

//Historial favorito
Widget listViewHorizontalHistoryImage({required BuildContext context}) {
  final _scrollController = ScrollController();
  final List<String> listImages = [
    'https://i.pinimg.com/564x/90/7b/38/907b38e04bf1ec1229f6e864e2145b27.jpg',
    'https://i.pinimg.com/564x/43/ba/94/43ba9468aa1159e25ad89635d5a9f277.jpg',
    'https://i.pinimg.com/564x/9e/e1/75/9ee175181b1116b6a5ffe35f10e46ac5.jpg',
    'https://i.pinimg.com/564x/9e/e1/75/9ee175181b1116b6a5ffe35f10e46ac5.jpg',
    'https://i.pinimg.com/564x/61/99/b1/6199b1dea5979adaa3c74757a31fbfdb.jpg',
    'https://i.pinimg.com/564x/aa/d4/0b/aad40b62137bf36f30350ae82e677916.jpg',
    'https://i.pinimg.com/564x/9e/e1/75/9ee175181b1116b6a5ffe35f10e46ac5.jpg',
    'https://i.pinimg.com/564x/9e/e1/75/9ee175181b1116b6a5ffe35f10e46ac5.jpg',
    'https://i.pinimg.com/564x/9e/e1/75/9ee175181b1116b6a5ffe35f10e46ac5.jpg',
    'https://i.pinimg.com/564x/9e/e1/75/9ee175181b1116b6a5ffe35f10e46ac5.jpg',
    'https://i.pinimg.com/564x/9e/e1/75/9ee175181b1116b6a5ffe35f10e46ac5.jpg',
  ];

  return SizedBox(
    height: MediaQuery.of(context).size.height / 5,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listImages.length,
      itemBuilder: (BuildContext context, int index) {
        return index != null
            ? SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(listImages[index]),
                    ),
                  ),
                ),
              )
            : const CircularProgressIndicator();
      },
    ),
  );
}

class addStory extends StatelessWidget {
  const addStory(
      {super.key,
      required this.context,
      required this.person,
      this.size = 80.0});

  final BuildContext context;
  final double size;
  final dynamic person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: size * 0.95,
                  height: size * 0.95,
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.grey[isDarkMode ? 900 : 200],
                      radius: 50.0,
                      backgroundImage: NetworkImage(person["url_foto_perfil"])),
                ),
                Positioned(
                  right: size * 0.08,
                  bottom: size * 0.08,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Theme.of(context).canvasColor,
                    child: const CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blueAccent,
                      radius: 8.5,
                      child: Icon(
                        Icons.add,
                        size: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5.0),
          const Text(
            "Tu historia",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12.0),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

//CLASS: dibujamos un ciculo para representar una historia
const List<Color> _DefaultGradient = [Color.fromRGBO(225, 225, 25, 1.0)];

class StoryCicle extends StatelessWidget {
  const StoryCicle({super.key, required this.person, this.size = 80});

  final dynamic person;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: SizedBox(
                width: size * 0.95,
                height: size * 0.95,
                child: DashedCircle(
                  dashes: person["dashes"],
                  gradientColor: colorsGradientInstagram,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[isDarkMode ? 900 : 200],
                      radius: 24.0,
                      backgroundImage: NetworkImage(person["url_foto_perfil"]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            "${person["usuario"]}",
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class DashedCircle extends StatelessWidget {
  //var
  final int dashes;
  final List<Color> gradientColor;
  final double gapSize;
  final double strokeWidth;
  final Widget child;

  const DashedCircle(
      {super.key,
      required this.child,
      this.dashes = 20,
      this.gradientColor = _DefaultGradient,
      this.gapSize = 3.0,
      this.strokeWidth = 2.0});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedCirclePainter(
          gradientColor: gradientColor,
          dashes: dashes,
          gapSize: gapSize,
          strokeWidth: strokeWidth),
      child: child,
    );
  }
}

//CustomPainter
class _DashedCirclePainter extends CustomPainter {
  //var
  final int dashes;
  final List<Color> gradientColor;
  final double gapSize;
  final double strokeWidth;

  _DashedCirclePainter(
      {this.dashes = 0,
      this.gradientColor = _DefaultGradient,
      this.gapSize = 3.0,
      this.strokeWidth = 2.0});

  @override
  void paint(Canvas canvas, Size size) {
    final double gap = pi / 180 * gapSize;
    final double singleAngle = (pi * 2) / dashes;

    //crear un cuadro delimitador, basado en el centro y rl radio del arco
    Rect rect =
        Rect.fromCircle(center: const Offset(165.0, 55.0), radius: 190.0);
    for (int i = 0; i < dashes; i++) {
      final Paint paint = Paint()
        ..shader = RadialGradient(colors: gradientColor).createShader(rect)
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke;
      canvas.drawArc(Offset.zero & size, gap + singleAngle * i,
          singleAngle - gap * 1, false, paint);
    }
  }

  @override
  bool shouldRepaint(_DashedCirclePainter oldDelegate) =>
      dashes != oldDelegate.dashes;
}

// ClASS: Dibujamos una circulo animado para representar un vivo
class LiveStoryCircle extends StatefulWidget {
  const LiveStoryCircle(
      {Key? key,
      required this.person,
      this.size = 100.0,
      this.color = Colors.purple,
      this.colorCanva = Colors.transparent})
      : super(key: key);

  final double size;
  final Color color, colorCanva;
  final dynamic person;

  @override
  State<LiveStoryCircle> createState() => _LiveStoryCircleState();
}

class _LiveStoryCircleState extends State<LiveStoryCircle>
    with SingleTickerProviderStateMixin {
  //var
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this);
    _startAnimation();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    controller.stop();
    controller.reset();
    controller.repeat(period: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  color: Colors.transparent,
                  margin: const EdgeInsets.only(bottom: 5),
                  width: widget.size * 0.95,
                  height: widget.size * 0.95,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomPaint(
                        painter: SpritePainter(
                            animation: controller, sizePaint: widget.size),
                        child: Container(
                          color: Colors.transparent,
                          margin: const EdgeInsets.only(bottom: 5),
                          width: widget.size * 0.70,
                          height: widget.size * 0.70,
                          child: CircleAvatar(
                            backgroundImage: CachedNetworkImageProvider(
                                widget.person["url_foto_perfil"] ?? "default"),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(color: widget.color, width: 2.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: widget.colorCanva,
                            width: widget.size * 0.03),
                        borderRadius: BorderRadius.circular(0),
                        color: widget.color),
                    child: Text(
                      "VIVO",
                      style: TextStyle(
                          fontSize: widget.size * 0.08, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          Text("${widget.person["usuario"]}",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 12.0),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

//anim CustomPainter
class SpritePainter extends CustomPainter {
  SpritePainter(
      {required this.animation,
      this.sizePaint = 100.0,
      this.color = Colors.purple})
      : super(repaint: animation);
  final Animation<double> animation;
  final double sizePaint;
  final Color color;

  void circle(Canvas canvas, Rect rect, double value) {
    double opacity = (1.0 - (value / 4.0)).clamp(.0, 1.0);
    Color color = this.color.withOpacity(opacity);

    double size = this.sizePaint / 2;
    double area = size * size;
    double radius = sqrt(area * value / 4);

    final Paint paint = Paint()..color = color;
    canvas.drawCircle(rect.center, radius, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);

    for (int wave = 3; wave >= 0; wave--) {
      circle(canvas, rect, wave + animation.value);
    }
    ;
  }

  @override
  bool shouldRepaint(SpritePainter oldDelegate) {
    return true;
  }
}
