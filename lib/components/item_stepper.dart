import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemStepper extends HookConsumerWidget {
  final int maxCount;
  final int minCount;
  final int initilalCount;
  final void Function(int count) onChangeCount;

  const ItemStepper({
    Key? key,
    required this.maxCount,
    required this.minCount,
    required this.initilalCount,
    required this.onChangeCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = useState(initilalCount);
    useEffect(() {
      count.addListener(() {
        onChangeCount(count.value);
      });
      return null;
    }, []);

    /// マイナスボタン
    final minusBtn = IconButton(
      icon: const Icon(Icons.remove),
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
      iconSize: 32.0,
      onPressed: (count.value <= minCount)
          ? null
          : () {
              if (count.value > minCount) {
                count.value -= 1;
              }
            },
    );

    /// プラスボタン
    final plusBtn = IconButton(
      icon: const Icon(Icons.add),
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
      iconSize: 32.0,
      onPressed: (count.value >= maxCount)
          ? null
          : () {
              if (count.value < maxCount) {
                count.value += 1;
              }
            },
    );

    /// 真ん中の数字テキスト
    final numberText = Text(
      '${count.value}',
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.black87,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
    );

    /// 横に並べる
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        minusBtn,
        numberText,
        plusBtn,
      ],
    );
  }
}
