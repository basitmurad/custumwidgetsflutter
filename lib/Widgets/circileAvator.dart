import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCircleAviatar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Circular aviator'),
      backgroundColor: Colors.red,),


// body: Image.asset('assets/images/myimage.jpg'),
      body: Center(
        child: Container(
            width: 400,
          height: 400,
          child:  CircleAvatar(


),
            // backgroundImage: AssetImage('assest/images/myimage.jpg'),,
          ),
        ),

    );
    // TODO: implement build
    throw UnimplementedError();
  }

}