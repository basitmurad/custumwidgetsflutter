import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(title: Text('Buttons'),
      backgroundColor: Colors.red,),


    body: Column(
      children: [
        TextButton(
          child: Text('Text Button'),
          onPressed: (){

            print('Button is Click');
          }
          ,
            onLongPress: (){
            print('Long Pressed');
            },
        ),
        ElevatedButton(onPressed: (){

          print('Elevated button');
        }, child: Text('Elevated Button'),),
        OutlinedButton(onPressed: (){

          print('Out lined Button');

        }, child: Text('OutLined Button')),


      ],
    ),);
    // TODO: implement build
    throw UnimplementedError();
  }

}