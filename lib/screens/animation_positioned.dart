import 'package:flutter/material.dart';

class AnimationPositioned extends StatefulWidget {
  AnimationPositioned({Key? key}) : super(key: key);

  @override
  State<AnimationPositioned> createState() => _AnimationPositionedState();
}

class _AnimationPositionedState extends State<AnimationPositioned> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Animation Positioned",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 450,
          width: 250,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                width: selected ? 200.0 : 150.0,
                height: selected ? 70.0 : 250.0,
                top: selected ? 50.0 : 180.0,
                duration: Duration(seconds: 2),
                curve: Curves.slowMiddle,
                child: GestureDetector(
                  onTap: () {
                    selected = !selected;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Center(
                      child: Text(
                        "Tap me , Tapped $selected",
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
