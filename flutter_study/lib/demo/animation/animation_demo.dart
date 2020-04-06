import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome> 
with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation animation;
  Animation animationColor;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      // value: 32.0,
      // lowerBound: 32.0,
      // upperBound: 100.0,
      duration: Duration(milliseconds: 3000),
      vsync: this,
    );

    curve = CurvedAnimation(parent: _animationController, curve: Curves.bounceOut);

    animation = Tween(
      begin: 32.0,
      end: 100.0,
    ).animate(curve);

    animationColor = ColorTween(
      begin: Colors.red,
      end: Colors.red[900]
    ).animate(_animationController);

    _animationController.addListener(() {
      // print('${_animationController.value}');
      setState(() {});
    });

    _animationController.addStatusListener((AnimationStatus status) {
      print(status);
    });

    // _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: Icon(Icons.favorite),
        iconSize: animation.value,
        color: animationColor.value,
        onPressed: () {
          switch (_animationController.status) {
            case AnimationStatus.completed:
              _animationController.reverse();
              break;
            default:
              _animationController.forward();
          }
        },
      )
    );
  }
}