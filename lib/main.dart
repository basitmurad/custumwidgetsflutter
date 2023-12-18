import 'package:flutter/material.dart';

import 'SecondLayout.dart';
import 'Widgets/rounded_btn.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(primarySwatch: Colors.lightBlue),
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text(
//               "Dashboard",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18.90,
//                   color: Colors.white),
//             ),
//             centerTitle: true,
//             actions: <Widget>[
//               IconButton(
//                   onPressed: () {
//                     print('Home button is pressed');
//                   },
//                   icon: const Icon(Icons.notification_add))
//             ],
//             backgroundColor: Colors.red,
//             leading: IconButton(
//                 onPressed: () {},
//                 icon: IconButton(
//                   onPressed: () {
//                     print('Notification button is pressed');
//                   },
//                   icon: const Icon(Icons.home),
//                 )),
//             shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                     bottomRight: Radius.circular(15),
//                     bottomLeft: Radius.circular(15))),
//             toolbarHeight: 100,
//           ),
//           body: const Column(
//             children: [
//
//
//                 Padding(
//                   padding: EdgeInsets.all(18.0),
//
//                   child: Text(
//                     "Enter you password and email",
//                     style: TextStyle(
//
//                       fontSize: 18,
//                     ),
//                   ),
//
//                 ),
//               SizedBox(height: 16.0,)
//
//
//             ],
//
//
//
//           ),
//         ));
//   }
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primaryColor: Colors.red),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Appbar' ,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold ,letterSpacing: 2.0),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//
//
//
//         backgroundColor: Colors.red,
//       ),
//
//     )
//     ;
//
//
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => Dashboard();
}

class Dashboard extends State<MyHomePage> {
  var textEmail = TextEditingController();
  var textPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(


      appBar: AppBar(
        title: const Text("Custom Text Field",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.90,
              color: Colors.white),

        ),

        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){

            print('Home button is pressed');

          }, icon: const Icon(Icons.notification_add))
        ],
        backgroundColor: Colors.red,
        leading: IconButton(onPressed: (){},
    icon: IconButton(onPressed: (){

      print('Notification button is pressed');
    }, icon: const Icon(Icons.home),

    )
    ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25)
          )
        ),
        toolbarHeight: 100,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text("Enter you password and email" ,style: TextStyle(fontSize: 18 ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0,bottom: 18,left: 22 ,right: 22), // Adjust the margin as needed
                height: 2.0,
                width: 600,
                color: Colors.black, // Change the color as needed
              ),

              TextField(
                  controller: textEmail,
                  decoration: InputDecoration(
                      hintText: 'Enter Email',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.3),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.3),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      // disabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(10.3),
                      //     borderSide: BorderSide(color: Colors.black)),

                      // suffixText: "Username Exist",
                      prefixIcon: Icon(Icons.email))),
              Container(
                height: 8,
              ),
              TextField(
                  controller: textPassword,
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.3),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.3),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      // disabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(10.3),
                      //     borderSide: BorderSide(color: Colors.black)),

                      // suffixText: "Username Exist",
                      prefixIcon: Icon(Icons.password))),
              Container(

                width: 200,
                margin: EdgeInsets.only(top: 20, right: 20 ,left: 20 ),


                child: RoundedBnt(btnName: 'Click', voidCallback: () {
                  Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SecondLayout()),
                          );
                }
                  ,icon: Icon(Icons.lock),

                ),
              ),

            ],
          ),
        ),
      ),
    )
    );
  }
}

