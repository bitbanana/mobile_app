import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// アプリ
class FruitDetail extends HookConsumerWidget {
  const FruitDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面上のバー
    final appBar = AppBar(title: const Text('ItemDetail'));

    final column = Column(children: [
      Text('Icon グレープ'),
      Text('BNN 240 (前日比 +20)'),
    ]);

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: column,
    );
  }
}
