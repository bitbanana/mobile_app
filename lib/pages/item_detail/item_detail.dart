import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// アプリ
class ItemDetail extends HookConsumerWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面上のバー
    final appBar = AppBar(title: const Text('ItemDetail'));

    final list = ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 300,
          height: 100,
          child: Text('$index'),
        );
      },
      itemCount: 13,
    );

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: list,
    );
  }
}
