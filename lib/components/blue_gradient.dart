import 'package:flutter/material.dart';

class BlueGradient extends StatelessWidget {
  final Widget? child;
  const BlueGradient({Key? key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
          colors: [
            Color(0xff8080ff),
            Color(0xff000088),
          ],
          stops: [
            0.0,
            1.0,
          ],
        ),
      ),
      child: child,
    );
  }
}
