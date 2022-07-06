import 'dart:async';
import 'package:flutter/material.dart';

class AnimatedGradient extends StatefulWidget {
  List<Color> colors;
  Duration duration;

  AnimatedGradient({
    Key? key,
    this.colors = const [Colors.white, Colors.black],
    this.duration = const Duration(seconds: 4),
  }) : super(key: key);

  @override
  State<AnimatedGradient> createState() => _AnimatedGradientState();
}

class _AnimatedGradientState extends State<AnimatedGradient> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(widget.duration, (timer) {
      setState(() {
        _counter++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            widget.colors[_counter % widget.colors.length],
            widget.colors[(1 + _counter) % widget.colors.length],
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
