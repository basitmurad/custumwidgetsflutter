import 'package:flutter/material.dart';
import 'package:custumwidgets/SecondLayout.dart';
import 'Widgets/rounded_btn.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Text Field",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.90,
              color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Enter you password and email" ,style: TextStyle(fontSize: 25.9, fontWeight: FontWeight.bold ),),
              Container(height:  10,),
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
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.3),
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                    prefixIcon: Icon(Icons.password),
                  )),
              Container(
                height: 8,
              ),
              RoundedBnt(btnName: 'Clicked ', voidCallback: ()
              {
                Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SecondLayout()),
                          );
              })
              // ElevatedButton(
              //     onPressed: () {
              //       String email = textEmail.text.toString();
              //       String password = textPassword.text.toString();
              //
              //       print("Email $textEmail  and Password $textPassword");
              //       Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => SecondLayout()),
              //       );
              //
              //     // if(textEmail.text.toString().isEmpty  && textPassword.text.toString().isEmpty)
              //     //   {
              //     //
              //     //     print("Your field are empty");
              //     //   }
              //     // else{
              //     // }
              //     },
              //     child:RoundedBnt(btnName: 'Login', voidCallback: () {  } ,) )
            ],
          ),
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.lightBlue,
    //     title: Text("Custom Widgets ", textAlign: TextAlign.center),
    //   ),
    //   body: const Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Padding(
    //         padding: EdgeInsets.all(6.0),
    //         child: Center(
    //           child: Column(
    //             children: [
    //               Text(
    //                 "Hello",
    //                 style: TextStyle(fontSize: 24.0),
    //               ),
    //
    //               Divider(
    //                 color: Colors.black,
    //                 thickness: 2.0,
    //
    //               ),                ],
    //           ),
    //         ),
    //       ),
    //       Center(
    //         child: Text(
    //           "Basit Murad",
    //           style: TextStyle(
    //             fontSize: 18.0,
    //           ),
    //         ),
    //       ),
    //       Text("I Am creating the Custom Widgets")
    //     ],
    //   ),
    //   backgroundColor: Colors.white60,
    // );

    // TODO: implement build
    throw UnimplementedError();
  }

}


// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
