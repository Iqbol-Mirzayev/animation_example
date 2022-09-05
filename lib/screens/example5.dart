import 'package:flutter/material.dart';

class Example5 extends StatefulWidget {
  const Example5({Key? key}) : super(key: key);

  @override
  _Example5State createState() => _Example5State();
}

class _Example5State extends State<Example5>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation sizeAnimation;
  late Animation borderSizeAnimation;
  late Animation border;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    colorAnimation =
        ColorTween(begin: Colors.red, end: Colors.green).animate(controller);

    sizeAnimation = Tween<double>(begin: 100.0, end: 200.0).animate(controller);

    borderSizeAnimation =
        Tween<double>(begin: 2.0, end: 100.0).animate(controller);

    border = Tween(begin: Colors.black, end: Colors.yellow).animate(controller);

    controller.addListener(() {
      setState(() {});
    });

    controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: Center(
          child: Container(
            height: sizeAnimation.value,
            width: sizeAnimation.value,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderSizeAnimation.value),
              color: colorAnimation.value,
            ),
          ),
        ));
  }
}
