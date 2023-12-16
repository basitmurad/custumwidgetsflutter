import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedBnt extends StatelessWidget {
   final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback voidCallback;

  RoundedBnt({
    required this.btnName,
    this.icon,
    this.bgColor,
    this.textStyle,
    required this.voidCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: voidCallback,


      style: ElevatedButton.styleFrom(
        primary: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ), child: Text('Click'),
    );
  }
}

