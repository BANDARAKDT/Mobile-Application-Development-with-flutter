import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 230, 200), // Background color
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 201, 198, 114),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 39, 69, 234),
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Flutter Logo Icon
            Icon(
              Icons.flutter_dash, // Flutter icon
              size: 80.0,
              color: Colors.blueAccent,
            ),

            SizedBox(height: 20), // Space between widgets

            // Text Widget
            Text(
              'Hello, Flutter World!',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 11, 104, 33),
                fontStyle: FontStyle.italic,
                letterSpacing: 2.0,
                wordSpacing: 5.0,
              ),
            ),

            SizedBox(height: 20), // Space between text and button

            // Elevated Button
            ElevatedButton(
              onPressed: () {
                // Action when button is clicked
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('I am the Dart bird 🎉'),
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                backgroundColor: Colors.blue, // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
              child: Text(
                'Click me to find who I am',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white, // Button text color
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
