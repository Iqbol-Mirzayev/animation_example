import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/cupertino_item.dart';

class CupertinoBottomModalSheet extends StatelessWidget {
  const CupertinoBottomModalSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoBottonModalSheet"),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            showCupertinoModalPopup(
              barrierDismissible: true,
              context: context,
              builder: (context) => CupertinoActionSheet(
                actions: <Widget>[
                  CupertinoActionItem(
                      ontap: () {},
                      text: "action 1",
                      buttonColor: Colors.white,
                      textColor: Colors.blue),
                  SizedBox(height: 10),
                  CupertinoActionItem(
                      ontap: () {},
                      text: "action 1",
                      buttonColor: Colors.white,
                      textColor: Colors.blue),
                  SizedBox(height: 10),
                  CupertinoActionItem(
                      ontap: () {},
                      text: "action 1",
                      buttonColor: Colors.white,
                      textColor: Colors.blue),
                ],
                cancelButton: CupertinoActionItem(
                    ontap: () {},
                    text: "Cancel",
                    buttonColor: Colors.green,
                    textColor: Colors.amber),
              ),
            );
          },
          child: Text(
            "data",
            style: TextStyle(
              fontSize: 25,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
