import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Card' ),
        backgroundColor:  Colors.red,
      ),

    body: Center(
      child: Container(
        child: Column(
          children: [
            Card(
              shadowColor: Colors.red,

              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('basit murad'),
              ),
            ),
            Card(
              shadowColor: Colors.red,

              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('basit murad'),
              ),
            ),
          ],

        ),
      )
      ,
    )
    );


    // TODO: implement build
    throw UnimplementedError();
  }

}