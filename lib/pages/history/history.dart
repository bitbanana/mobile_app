import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/history.dart';
import 'package:mobile_app/state/receipt.dart';
import 'package:mobile_app/types/receipt.dart';

/// アプリ
class History extends HookConsumerWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rcpts = ref.read(history);

    /// 画面上のバー
    final appBar = BlueAppBar(title: 'History (取引履歴)');

    final list = ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          buildItem(rcpts[index], ref),
      itemCount: rcpts.length,
    );

    final column = Column(children: [
      Text('過去 20 件の取引記録が残ります'),
      Expanded(child: list),
    ]);

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: column,
    );
  }

  /// リストアイテム
  Widget buildItem(Receipt rcpt, WidgetRef ref) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.people),
        title: Text(
          'OUT Item: ${rcpt.outItemId} OUT BNN ${rcpt.outCoinCount} IN Item ${rcpt.inItemId} IN BNN ${rcpt.inCoinCount}',
        ),
        onTap: () {
          ref.read(receipt.notifier).update(rcpt);
          router.push(PageId.buyGuide);
        },
      ),
    );
  }
}
