import 'package:flutter/material.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  var showFirstContainer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 3"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedSwitcher(
                duration: Duration(seconds: 3),
                child: showFirstContainer
                    ? Container(
                        key: UniqueKey(),
                        height: 200,
                        width: 200,
                        color: Colors.black,
                        child: Center(
                            child: FlutterLogo(
                          size: 150,
                        )),
                      )
                    : Container(
                        key: UniqueKey(),
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 5, color: Colors.black),
                          color: Colors.white,
                        ),
                        child: Center(
                            child: FlutterLogo(
                          size: 150,
                        )),
                      )),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                showFirstContainer = !showFirstContainer;
              });
            },
            child: Text("Click me"),
          )
        ],
      ),
    );
  }
}
