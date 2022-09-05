import 'package:flutter/material.dart';


class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  var showFirstContainer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
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
                      color: Colors.amber,
                      child: Center(child: Text("This is first widget")),
                    )
                  : Container(
                      key: UniqueKey(),
                      height: 200,
                      width: 200,
                      color: Colors.green,
                      child: Center(child: Text("This is second widget")),
                    ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey),
            ),
            onPressed: () {
              setState(() {
                showFirstContainer = !showFirstContainer;
              });
            },
            child: Text("Click here"),
          )
        ],
      ),
    );
  }
}
