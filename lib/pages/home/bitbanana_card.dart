import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_gradient.dart';
import 'package:mobile_app/components/digital_counter.dart';
import 'package:mobile_app/types/bitbanana_key.dart';
import 'package:intl/intl.dart';

Size bnnCardSize({required double screenW}) {
  double w = 0;
  if (screenW > 485.4 + 40) {
    w = 485.4;
  } else {
    w = screenW - 40;
  }
  double h = w / 1.618;
  return Size(w, h);
}

class BitbananaCard extends HookConsumerWidget {
  final BitbananaKey bnnKey;
  final double width;
  final double height;
  // ignore: use_key_in_widget_constructors
  const BitbananaCard({
    required this.bnnKey,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nickname = Text(
      bnnKey.nickname,
      maxLines: 1,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'UserName',
        fontSize: 30,
        color: Colors.grey[800],
      ),
    );

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.yellow[300], // カードの色
        borderRadius: BorderRadius.circular(width / 40),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(1, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DigitalCounter(bnnKey.balance_memo),
          const SizedBox(height: 20),
          nickname
        ],
      ),
    );
  }
}
