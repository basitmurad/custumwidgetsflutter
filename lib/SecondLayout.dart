import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/rounded_btn.dart';

class SecondLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'route',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom button Layout'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.white70,
        body: Container(

          width: 200,
          margin: EdgeInsets.only(top: 20, right: 20 ,left: 20 ),


          child: RoundedBnt(btnName: 'Click', voidCallback: () {  }
            ,icon: Icon(Icons.lock),

            ),
            // child: RoundedBnt(
            //   btnName: 'Click',
            //   icon: Icon(Icons.lock),
            //   voidCallback: () {
            //     print("Logged in");
            //   },
            //   textStyle: TextStyle(fontWeight: FontWeight.bold),
            // ),
          ),
        ),

    );
  }
}