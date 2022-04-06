import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemHeader extends HookConsumerWidget {
  final void Function() onPressedDetail;
  // ignore: use_key_in_widget_constructors
  const ItemHeader({required this.onPressedDetail});

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
    return Container(
      width: double.infinity,
      height: 300,
      child: Center(
        child: column,
      ),
    );
  }
}
