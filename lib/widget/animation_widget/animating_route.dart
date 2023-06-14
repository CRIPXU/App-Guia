import 'package:flutter/cupertino.dart';

class AnimatingRoute extends PageRouteBuilder {
  //late final Widget page;
  final Widget? route;

  AnimatingRoute({ this.route})
      :super
      (
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation,) => page,
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secundaryAnimation, Widget child,) =>
          FadeTransition(opacity: animation, child: route),);

  static get page => null;


}