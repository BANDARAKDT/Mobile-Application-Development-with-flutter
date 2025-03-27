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
          title: Text("Fade in Animation"),
        ),
        body: FadeInAnimation(),
      ),
      
    );
  }
}

class FadeInAnimation extends StatefulWidget {

  @override
  _FadeInAnimationState createState() => _FadeInAnimationState();
}

class _FadeInAnimationState extends State<FadeInAnimation>
  with SingleTickerProviderStateMixin{
    late AnimationController _controller;
    late Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(duration:const Duration(
      seconds: 3),
      vsync: this);

      _animation=Tween<double>(begin: 0.0,end: 1.0).animate(_controller);
      _controller.forward();
  }

@override
void dispose() {
  _controller.dispose();
  super.dispose();
}

@override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(opacity: _animation,
      child: Container(width:200.0,
      height: 200.0,
      color: Colors.blue,
      child: Center(
        child: Text("Fade in",style: TextStyle(color: Colors.white,fontSize: 24.0),),
      ),),),
    );
    throw UnimplementedError();
  }

  
  }