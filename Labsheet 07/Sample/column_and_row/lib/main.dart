//>>>>>>>>>>>>>>>>>>   1. Column and rows

/*import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Column and Row Layout')),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 50,height:50,color: Colors.red,),
              Container(width: 50,height:50,color: Colors.green,),
              Container(width: 50,height:50,color: Colors.blue,),

            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Row with text widgets',style: TextStyle(fontSize: 20),)
            ],
          ),
        ],
      )),
    );
  }
}

*/

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   2. Stack Widget

/*
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stack Widget'),),
        body:Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(width: 200,height: 200,color: Colors.blue),
              Positioned(bottom: 10,right: 10, child: Icon(Icons.star,size:50,color:Colors.yellow),),
              Positioned(top:10,left:10,child: Icon(Icons.favorite,size: 50,color: Colors.red,))
            ],
          ),
        )
      ),
    );
  }
}

*/

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  03. Expanded and Flexible
/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Expanded & Flexible')),
        body: Row(
          children: [
            Expanded(
              child: Container(height: 100, color: Colors.red),
            ),
            Flexible(
              child: Container(height: 100, color: Colors.green),
            ),
            Expanded(
              flex: 5,
              child: Container(height: 100, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
 */

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 04. Grid view Layout

/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView example')),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return Container(
              margin: EdgeInsets.all(10),
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text('Item $index',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            );
          }),
        ),
      ),
    );
  }
}
*/

//>>>>>>>>>>>>>>>>>>>>>>>>>  05.List view layout

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView Example')),
        body: ListView(
          children: List.generate(10, (index) {
            return ListTile(
              leading: Icon(Icons.label),
              title: Text('Item $index'),
            );
          }),
        ),
      ),
    );
  }
}
