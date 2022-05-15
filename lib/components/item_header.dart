import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemHeader extends HookConsumerWidget {
  final void Function() onPressedDetail;

  const ItemHeader({Key? key, required this.onPressedDetail}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final column = Column(children: [
      Text('Icon グレープ'),
      Text('BNN 240 (前日比 +20)'),
      ElevatedButton(
        onPressed: onPressedDetail,
        child: Text('詳しくみる'),
      ),
    ]);
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Center(
        child: column,
      ),
    );
  }
}
