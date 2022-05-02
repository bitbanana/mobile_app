import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DigitalCounter extends StatelessWidget {
  final int count;
  DigitalCounter(this.count);

  @override
  Widget build(BuildContext context) {
    final icon = Container(
      width: 36,
      height: 36,
      child: Image.asset('images/bitbanana-icon.png'),
    );
    final formatter = NumberFormat("#,###");
    var digits = formatter.format(count);
    final text = Text(
      digits,
      maxLines: 1,
      textAlign: TextAlign.right,
      style: TextStyle(
        fontFamily: 'Digital',
        fontSize: 30,
        color: Colors.yellow[200],
      ),
    );
    final deco = BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.circular(8),
    );
    return Container(
      // height: 42,
      width: 250,
      padding: const EdgeInsets.fromLTRB(8, 12, 16, 12),
      decoration: deco,
      child: Row(
        children: [icon, const Spacer(), text],
      ),
    );
  }
}
