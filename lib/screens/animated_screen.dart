import 'dart:math' show Random;
import 'dart:developer' show log;
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  Curve _curve = Curves.elasticOut;
  final List _curveList = [
    Curves.elasticOut,
    Curves.bounceIn,
    Curves.bounceInOut,
    Curves.bounceOut,
    Curves.decelerate,
    Curves.ease,
    Curves.easeIn,
    Curves.easeInSine,
    Curves.easeInQuad,
    Curves.easeInCubic,
    Curves.easeInQuart,
    Curves.easeInQuint,
    Curves.easeInExpo,
    Curves.easeInCirc,
    Curves.easeInBack,
    Curves.easeInOut,
    Curves.easeInOutSine,
    Curves.easeInOutQuad,
    Curves.easeInOutCubic,
    Curves.easeInOutQuart,
    Curves.easeInOutQuint,
    Curves.easeInOutExpo,
    Curves.easeInOutCirc,
    Curves.easeInOutBack,
    Curves.easeOut,
    Curves.easeOutSine,
    Curves.easeOutQuad,
    Curves.easeOutCubic,
    Curves.easeOutQuart,
    Curves.easeOutQuint,
    Curves.easeOutExpo,
    Curves.easeOutCirc,
    Curves.easeOutBack,
    Curves.elasticIn,
    Curves.elasticInOut,
    Curves.elasticOut,
    Curves.fastOutSlowIn,
    Curves.slowMiddle,
    Curves.linear
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 700),
          curve: _curve,
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_outline, size: 35),
        onPressed: () {
          changeShape();
        },
      ),
    );
  }

  void changeShape() {
    final random = Random();
    var size = int.parse(_curveList.length.toString());

    setState(() {
      _width = random.nextInt(300).toDouble() + 70;
      _height = random.nextInt(300).toDouble() + 70;
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius =
          BorderRadius.circular(random.nextInt(100).toDouble() + 10);
      _curve = _curveList[random.nextInt(size)];
    });
  }
}
