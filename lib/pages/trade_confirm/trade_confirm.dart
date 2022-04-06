import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/router/page_id.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/receipt.dart';

/// アプリ
class TradeConfirm extends HookConsumerWidget {
  const TradeConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rcpt = ref.read(receipt);
    if (rcpt == null) {
      return const Text('表示する取引レシートがありません');
    }

    /// 画面上のバー
    final appBar = AppBar(title: const Text('Trade Confirm'));

    final button = ElevatedButton(
      onPressed: () {
        ref.read(router).pushBaseNavi(PageId.tradeResult);
      },
      child: const Text('Buy'),
    );

    final column = Column(children: [
      // 出て行く アイテム 個数
      if (rcpt.outItemId != null)
        Text('OUT Item ${rcpt.outItemId} * ${rcpt.outItemCount}'),
      // 出て行く コイン 個数
      if (rcpt.outCoinCount > 0) Text('OUT BNN ${rcpt.outCoinCount}'),

      // 入ってくる アイテム 個数
      if (rcpt.inItemId != null)
        Text('IN Item ${rcpt.inItemId} * ${rcpt.inItemCount}'),
      // 入ってくる コイン 個数
      if (rcpt.inCoinCount > 0) Text('IN BNN ${rcpt.inCoinCount}'),
      const Text('取引を確定してもよろしいでしょうか?'),
      button,
    ]);
    final center = Center(child: column);

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: center,
    );
  }
}
