import 'package:flutter/material.dart';
import 'package:my_routers/screens/animation_container.dart';
import 'package:my_routers/screens/animation_positioned.dart';
import 'package:my_routers/screens/draw1.dart';
import 'package:my_routers/screens/example.dart';
import 'package:my_routers/screens/home3_1.dart';
import 'package:my_routers/screens/home3_3.dart';
import 'package:my_routers/screens/rotate.dart';
import 'package:my_routers/screens/screen4.dart';
import '../screens/clean_code.dart';

class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();
  static RouteGenerator get router => _generator;
  RouteGenerator._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return navigate(Draw1());
      case '/first_page':
        final args = settings.arguments as String;
        return navigate(FirstPage(title: args));
    }
  }

  navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
