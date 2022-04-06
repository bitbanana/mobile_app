import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/pages/top/top.dart';
import 'package:mobile_app/router/page_id.dart';
import 'package:mobile_app/router/router.dart';

/// アプリ
class TradeResult extends HookConsumerWidget {
  const TradeResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面上のバー
    final appBar = AppBar(
      title: const Text('Trade Result'),
      automaticallyImplyLeading: false,
    );

    final button = ElevatedButton(
      onPressed: () {
        ref.read(tabIndex.notifier).selectTab(1);
        ref.read(router).setBaseNavi([PageId.top]);
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
