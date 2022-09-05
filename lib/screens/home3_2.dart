import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> with SingleTickerProviderStateMixin {
  late bool loading;
  late Animation<double> oneAnimation;
  late Animation<double> sizeAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    loading = true;
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    oneAnimation =
        Tween<double>(begin: 0, end: 2 * pi).animate(animationController)
          ..addListener(() {
            setState(() {});
          });
    sizeAnimation = Tween<double>(begin: 1, end: 6).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
