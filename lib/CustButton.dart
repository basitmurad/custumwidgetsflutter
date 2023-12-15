



import 'package:flutter/material.dart';

import 'Widgets/rounded_btn.dart';

class CustomButton extends StatelessWidget {
  // const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      title: 'route',
      home: Scaffold(
        appBar: AppBar(title: Text('Custum button Layout'),
        centerTitle: true,
         backgroundColor: Colors.blueAccent,),
        backgroundColor: Colors.white70,
        body: ElevatedButton(onPressed: (){}, child: RoundedBnt(btnName: 'Click' , icon: Icon(Icons.lock),voidCallBack: (){
          print("Logged in");


        },
        textStyle: TextStyle(fontWeight: FontWeight.bold),)),
      ),

    );
  }


}
