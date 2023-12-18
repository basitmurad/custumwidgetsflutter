

import 'package:flutter/material.dart';

import 'Widgets/CustumAppBar.dart';
import 'Widgets/rounded_btn.dart';


class SecondLayout extends StatelessWidget {



  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Container',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:  Colors.lightBlue),
      home: MyClass()
    );

    //
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Container')
    //   ),
    // );
    // return MaterialApp(
    //   title: 'route',
    //   home: Scaffold(appBar: CustumAppBar(
    //     title: "My Custum",
    //     titleWidget: Icon(Icons.access_time , color: Colors.white70,),
    //   ),
    //     // appBar: AppBar(
    //     //   title: Text('Custom button Layout'),
    //     //   centerTitle: true,
    //     //   backgroundColor: Colors.blueAccent,
    //     // ),
    //     backgroundColor: Colors.white70,
    //     body: Container(
    //
    //       width: 200,
    //       margin: EdgeInsets.only(top: 20, right: 20 ,left: 20 ),
    //
    //
    //       child: RoundedBnt(btnName: 'Click', voidCallback: () {  }
    //         ,icon: Icon(Icons.lock),
    //
    //         ),
    //         // child: RoundedBnt(
    //         //   btnName: 'Click',
    //         //   icon: Icon(Icons.lock),
    //         //   voidCallback: () {
    //         //     print("Logged in");
    //         //   },
    //         //   textStyle: TextStyle(fontWeight: FontWeight.bold),
    //         // ),
    //       ),
    //     ),
    //
    //
    // );


  }

}

class MyClass  extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Container'),



      backgroundColor: Colors.lightBlue,),
      body:  Center(
        child: Container(
          width: 250,
        height: 150,
          color: Colors.red,

          child: const Center(child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Hello DevHub' ,style: TextStyle(color: Colors.white,fontSize: 18 ,fontWeight: FontWeight.w500
                ,backgroundColor: Colors.blue



            ),),
          )),


            ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}