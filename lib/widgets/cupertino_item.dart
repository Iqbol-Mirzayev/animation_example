import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CupertinoActionItem extends StatelessWidget {
  const CupertinoActionItem(
      {Key? key,
      required this.ontap,
      required this.text,
      required this.buttonColor,
      required this.textColor})
      : super(key: key);
  final VoidCallback ontap;
  final String text;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: buttonColor,
      child: CupertinoActionSheetAction(
          onPressed: ontap,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'sf_regular',
                color: textColor,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          )),
    );
  }
}
