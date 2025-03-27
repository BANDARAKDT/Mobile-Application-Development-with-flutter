import 'package:flutter/material.dart';

void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Animation Example'),
        ),
        body: RotationAnimation(),
      ),
    );
  }
}


class RotationAnimation extends StatefulWidget {

  @override
  _RotationAnimationState createState() => _RotationAnimationState();
}

class _RotationAnimationState extends State<RotationAnimation> 
  with SingleTickerProviderStateMixin{
    late AnimationController _controller;
    late Animation<double> _animation;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =AnimationController(duration:const Duration(seconds: 2),
    vsync: this );
  
  _animation = Tween(begin: 0.0,end:1.0).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));

  _controller.repeat();

 // _controller.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(turns: _animation,
      child: Container(width: 200.0,
      height: 200.0,
      color: Colors.orange,
      child: Center(child: Text('Rotate',
      style: TextStyle(color: Colors.white,fontSize: 24.0),),),),),
    );
    throw UnimplementedError();
  }

  }


