import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Draw1 extends StatefulWidget {
  const Draw1({Key? key}) : super(key: key);

  @override
  State<Draw1> createState() => _Draw1State();
}

class _Draw1State extends State<Draw1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Custom Painter:  drawCircle"),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: CustomPaint(
            size: Size(300, 300),
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.green;
    var paints = Paint()..color = Colors.red;
    

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      100,
      paint,
    );
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      100,
      paints,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
