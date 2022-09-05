import 'package:flutter/material.dart';

class AnimationContainers extends StatefulWidget {
  AnimationContainers({Key? key}) : super(key: key);

  @override
  State<AnimationContainers> createState() => _AnimationContainersState();
}

class _AnimationContainersState extends State<AnimationContainers> {
  bool isBigger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Animation Container"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: AnimatedContainer(
              height: 300,
              width: isBigger ? 500 : 100,
              duration: Duration(seconds: 2),
              curve: Curves.easeInOutQuad,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 0.5,
                  colors: [
                    Colors.green,
                    Colors.white,
                  ],
                  stops: [isBigger ? 0.1 : 0.2, 1.0],
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/car.png"),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              isBigger = !isBigger;
              setState(() {});
            },
            child: isBigger ? Text("Decrease") : Text("Increase"),
          ),
        ],
      ),
    );
  }
}
