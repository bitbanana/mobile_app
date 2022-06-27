import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class Rotating extends StatefulWidget {
  final int interval;
  final int duration;
  final Widget child;
  const Rotating({
    Key? key,
    required this.child,
    required this.interval,
    required this.duration,
  }) : super(key: key);
  @override
  RotatingState createState() => RotatingState();
}

class RotatingState extends State<Rotating>
    with SingleTickerProviderStateMixin {
  bool _isFront = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      Duration(seconds: widget.interval),
      (Timer timer) {
        setState(() {
          _isFront = !_isFront;
        });
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel(); // 破棄される前に停止する
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(seconds: widget.duration),
      transitionBuilder: (Widget child, Animation<double> animation) {
        final rotate = Tween(begin: pi, end: 0.0).animate(animation);

        return AnimatedBuilder(
            animation: rotate,
            child: child,
            builder: (BuildContext context, Widget? child) {
              final angle = (ValueKey(_isFront) != widget.key)
                  ? min(rotate.value, pi / 2)
                  : rotate.value;
              return Transform(
                transform: Matrix4.rotationY(angle),
                alignment: Alignment.center,
                child: child,
              );
            });
      },
      switchInCurve: Curves.linear,
      switchOutCurve: Curves.linear,
      child: _isFront
          ? Container(key: const ValueKey(true), child: widget.child)
          : Container(key: const ValueKey(false), child: widget.child),
    );
  }
}
