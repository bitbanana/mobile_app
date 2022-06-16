import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/router/router.dart';

/// アプリ
class TradeResult extends HookConsumerWidget {
  const TradeResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面上のバー
    final appBar = BlueAppBar(title: 'Trade Result (取引結果画面)');

    final button = ElevatedButton(
      onPressed: () {
        tabRouter!.select(TabPageId.sell);
        router.push(PageId.top);
      },
      child: const Text('OK'),
    );

    final column = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('GET!!'),
        button,
      ],
    );
    final center = Center(child: column);

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: center,
    );
  }
}
