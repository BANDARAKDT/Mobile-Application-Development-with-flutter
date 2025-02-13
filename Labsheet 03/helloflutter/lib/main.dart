import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HelloFlutter(), // Keep it as const
    );
  }
}

class HelloFlutter extends StatefulWidget {
  const HelloFlutter({super.key});

  @override
  _HelloFlutterState createState() => _HelloFlutterState();
}

class _HelloFlutterState extends State<HelloFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text('Hello flutter'), // Added const
      ),
    );
  }
}
