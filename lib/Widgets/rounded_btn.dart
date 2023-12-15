import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedBnt extends StatelessWidget {

  late final String btnName;
  final   Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;



  RoundedBnt({ required this.btnName, this.icon, this.bgColor, this.textStyle, this.voidCallBack});

  @override
  Widget build(BuildContext context) {


  return ElevatedButton(onPressed: (){

    voidCallBack!();


  }, child: Row(

  ));









    throw UnimplementedError();
  }
}
