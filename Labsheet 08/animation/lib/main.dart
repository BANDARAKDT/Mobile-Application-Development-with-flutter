import 'package:flutter/material.dart';

void main() {
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
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward(); // Start animation
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
    child:Container(
      width: 200.0,
      height: 200.0,
      color: Colors.blue,
      child: Center(
        child: Text('Fade in',
        style: TextStyle(color: Colors.white,fontSize: 24.0),),
      ),
    ),),
   );
    throw UnimplementedError();
  }
  
  
  
  }

// ************************************  01. fade in animation 

/*
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

*/



// **************************************   03 rotation animation 

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
        appBar: AppBar(
          title: Text('Rotation Animation'),
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
    with SingleTickerProviderStateMixin {                   //animation dekkak weda kalata eka controller ekai weda karanne.. ela nisai single... demme
  late AnimationController _controller; // Fixed null safety
  late Animation<double> _animation; // Fixed null safety
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.repeat(); // Runs indefinitely
    // Use `_controller.forward();` instead for a one-time animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: _animation,
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.orange,
          child: Center(
            child: Text(
              'Rotate',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
        ),
      ),
    );
  }
}


 */


// *****************************************   03. scale animation 

/*
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
        appBar: AppBar(
          title: Text("Scale Animation"),
        ),
        body: ScaleAnimation(),
      ),
    );
  }
}

class ScaleAnimation extends StatefulWidget {
  @override
  _ScaleAnimationState createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
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
      child: ScaleTransition(
        scale: _animation,
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.green,
          child: Center(
            child: Text(
              'Scale',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
        ),
      ),
    );
  }
}

 */



  // ***********************************   04.Combine Animation

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
        appBar: AppBar(
          title: Text('Combine Animations'),
        ),
        body: CombineAnimations(),
      ),
    );
  }
}

class CombineAnimations extends StatefulWidget {
  @override
  _CombineAnimationsState createState() => _CombineAnimationsState();
}

class _CombineAnimationsState extends State<CombineAnimations>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // Fixed null safety
  late Animation<double> _fadeAnimation; // Fixed null safety
  late Animation<double> _scaleAnimation; // Fixed null safety
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

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
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.purple,
            child: Center(
              child: Text(
                'Combine',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

  
  */



  // ****************************************   05. custom animation

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
        appBar: AppBar(
          title: Text("Customized animation"),
        ),
        body: CustomizeAnimation(),
      ),
    );
  }
}

class CustomizeAnimation extends StatefulWidget {
  @override
  _CustomizeAnimationState createState() => _CustomizeAnimationState();
}

class _CustomizeAnimationState extends State<CustomizeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.bounceIn),
    );
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: _animation,
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Bounce',
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_controller.isAnimating) {
                  _controller.stop();
                } else {
                  _controller.repeat(reverse: true);
                }
              });
            },
            child: Text(_controller.isAnimating ? 'Stop' : 'Start'),
          ),
        ],
      ),
    );
  }
}

   */