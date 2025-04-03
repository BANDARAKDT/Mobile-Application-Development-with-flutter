import 'package:flutter/material.dart';

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
      theme: ThemeData(),
      home: Scaffold(
        body: Center(
          child: GestureDetector( onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            print('Swiped Right');
          } else if (details.primaryVelocity! < 0) {
            print('Swiped Left');
          }
        },
        onVerticalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            print('Swiped Down');
          } else if (details.primaryVelocity! < 0) {
            print('Swiped Up');
          }
        },
          child: Container(
            color: Colors.amber,
            width: 100,
            height: 100,
            child: Center(child: Text('Swap me',style: TextStyle(color: Colors.green,fontSize: 16),)),
            
          ),
          ),
        ),
      ),
    );
  }
}


