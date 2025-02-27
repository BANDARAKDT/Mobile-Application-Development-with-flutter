import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Hello, Flutter")),
        body: Center(
            child: Container(
          height: 200,
          width: 200,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Text("Hello",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        )),
      ),
    );
  }
}



/*

import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: const Text("Container example"),
),
body: Container(
height: 200,
width: double.infinity,
color: Colors.purple,
alignment: Alignment.center,
margin: const EdgeInsets.all(20),
padding: const EdgeInsets.all(30),
transform: Matrix4.rotationZ(0.1),
child: const Text("Hello! i am inside a container!",
style: TextStyle(fontSize: 20)),
),
),
);
}
}

*/