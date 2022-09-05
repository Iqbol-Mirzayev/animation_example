import 'package:flutter/material.dart';

class Rotate extends StatefulWidget {
  const Rotate({Key? key}) : super(key: key);

  @override
  State<Rotate> createState() => _RotateState();
}

class _RotateState extends State<Rotate>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 80.0),
          ),
        ),
      ),
    );
  }
}
