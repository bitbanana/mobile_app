import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/components/uri_image.dart';

class PriceTag extends StatelessWidget {
  final int price;
  final Color color;
  const PriceTag({
    Key? key,
    required this.price,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,###");
    var digits = formatter.format(price);
    final text = Text(
      digits,
      maxLines: 1,
      textAlign: TextAlign.right,
      style: TextStyle(
        fontFamily: 'Digital',
        fontSize: 28,
        color: Colors.yellow[200],
      ),
    );
    final deco = BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    );
    final icon = Container(
      margin: const EdgeInsets.all(8),
      child: UriImage('assets://bitbanana.png'),
    );
    return Container(
      height: 50,
      width: 120,
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
      decoration: deco,
      child: Row(
        children: [text, const Spacer(), icon],
      ),
    );
  }
}
