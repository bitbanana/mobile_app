import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemStepper extends HookConsumerWidget {
  final maxCount = 20;
  final minCount = 1;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = useState(minCount);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.remove),
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
            iconSize: 32.0,
            onPressed: (count.value <= minCount)
                ? null
                : () {
                    if (count.value > minCount) {
                      count.value -= 1;
                    }
                  },
          ),
          Text(
            '${count.value}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
            iconSize: 32.0,
            onPressed: (count.value >= maxCount)
                ? null
                : () {
                    if (count.value < maxCount) {
                      count.value += 1;
                    }
                  },
          ),
        ],
      ),
    );
  }
}
