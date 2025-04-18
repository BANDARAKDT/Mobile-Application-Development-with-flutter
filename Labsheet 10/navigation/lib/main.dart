import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tabs Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tebs Demo'),
          bottom: const TabBar(indicatorColor: Colors.red, tabs: [
            Tab(
              icon: Icon(Icons.directions_car),
              text: 'Car',
            ),
            Tab(
              icon: Icon(Icons.directions_transit),
              text: 'Transit',
            ),
            Tab(
              icon: Icon(Icons.directions_bike),
              text: 'Bike',
            ),
          ]),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text('Car Tab Content'),
          ),
          Center(
            child: Text('Transit Tab Content'),
          ),
          Center(
            child: Text('Bike Tab Content'),
          )
        ]),
      ),
    );
  }
}
