import 'dart:math';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late CurvedAnimation curvedAnimation;
  late Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    final curvedAnimation = CurvedAnimation(
        parent: animationController,
        curve: Curves.decelerate,
        );

    animation = Tween<double>(begin: 0.0, end: 2 * pi).animate(curvedAnimation)
      ..addListener(() {
        setState(
          () {},
        );
      });

    animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 4"),
        centerTitle: true,
      ),
      body: Stack(children: [
        Positioned(
          top: 80,
          left: 100,
          child: Transform.rotate(
            angle: animation.value,
            child: FlutterLogo(),
          ),
        ),
      ]),
    );
  }
}
