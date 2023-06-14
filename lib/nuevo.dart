import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:guiavenezuela/estados/capital_carabobo.dart';
import 'package:guiavenezuela/estados/capital_portuguesa.dart';

import 'estados/capital_aragua.dart';
import 'estados/capital_zulia.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  double _scale = 1.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animation = Tween<double>(begin: 1.0, end: 10.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
        //reverseCurve: Curves.easeInBack
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    if (_animationController.status == AnimationStatus.completed) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
  }

  void _navigateToPage(int pageNumber) {
    // Navegación a diferentes páginas según el número de página tocada
    // Implementa la navegación de acuerdo a tus necesidades
    switch (pageNumber) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Aragua()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Carabobo()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Portuguesa()),
        );
        break;
    }
  }

  void _handleScaleUpdate(ScaleUpdateDetails details) {
    setState(() {
      _scale = _animation.value * details.scale.clamp(1.0, 2.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onScaleUpdate: _handleScaleUpdate,
        onTap: () async {
          // Lógica para determinar qué parte de la imagen se tocó y realizar la navegación
          // Aquí se muestra un ejemplo utilizando diferentes zonas de la imagen
          // final RenderObject? box =  context.findRenderObject();
          // final OffsetLayer localOffset = box!.updateCompositedLayer(oldLayer: OffsetLayer(offset:  Offset.zero));
          final RenderBox box = context.findRenderObject() as RenderBox;
          final Offset localOffset = box.globalToLocal(Offset.zero);
          final double imageSize = 0.1;

          //Obtener las coordenada X y Y dentro de la imagen
          final double x = localOffset.dx;
          final double y = localOffset.dy;

          // Área 1: Ejemplo de coordenadas de área
          final double area1StartX = 0.0;
          final double area1StartY = 0.0;
          final double area1EndX = imageSize * 0.2;
          final double area1EndY = imageSize * 0.2;

          if (
              // localOffset.dx >= area1StartX &&
              //     localOffset.dx <= area1EndX &&
              //     localOffset.dy >= area1StartY &&
              //     localOffset.dy <= area1EndY
              x < box.size.width / 2 && y < box.size.height / 2) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Zulia()));
            //_navigateToPage(1);
          }

          // Área 2: Otro ejemplo de coordenadas de área
          final double area2StartX = imageSize * 0.4;
          final double area2StartY = imageSize * 0.4;
          final double area2EndX = imageSize * 0.6;
          final double area2EndY = imageSize * 0.6;

          if (localOffset.dx >= area2StartX &&
              localOffset.dx <= area2EndX &&
              localOffset.dy >= area2StartY &&
              localOffset.dy <= area2EndY) {
            _navigateToPage(2);
          }

          // Área 2: Otro ejemplo de coordenadas de área
          final double area3StartX = imageSize * 0.8;
          final double area3StartY = imageSize * 0.8;
          final double area3EndX = imageSize;
          final double area3EndY = imageSize;

          if (localOffset.dx >= area3StartX &&
              localOffset.dx <= area3EndX &&
              localOffset.dy >= area3StartY &&
              localOffset.dy <= area3EndY) {
            _navigateToPage(3);
          }

          // Continúa con más áreas según sea necesario
        },
        child: Center(
          child: GestureDetector(
            onTap: _startAnimation,
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _animation.value,
                  child: child,
                );
              },
              child: Image.asset('images/mapa.png'),
            ),
          ),
        ),
      ),
    );
  }
}
