import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/first_page',arguments: "Hasan");
            },
            child: Text(
              "First Page",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey)),
            onPressed: () {
              Navigator.pushNamed(context, '/second_page',arguments: "Husan");
            },
            child: Text(
              "Second Page",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey)),
            onPressed: () {
              Navigator.pushNamed(context, '/third_page',arguments: "Eshmat");
            },
            child: Text(
              "Third Page",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey)),
            onPressed: () {
              Navigator.pushNamed(context, '/fourth_page',arguments: "Toshmat");
            },
            child: Text(
              "Fourth Page",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey)),
            onPressed: () {
              Navigator.pushNamed(context, '/fifth_page',arguments: "G'ishmat");
            },
            child: Text(
              "Fifth Page",
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ]),
      ),
    );
  }
}
