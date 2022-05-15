import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
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
    final appBar = BlueAppBar(title: 'Trade Confirm (取引確認)', canBack: true);

    final button = ElevatedButton(
      onPressed: () {
        router.push(PageId.tradeResult);
      },
      child: const Text('Buy'),
    );

    final column = Column(children: [
      // 出て行く アイテム 個数
      if (rcpt.outFruitId != null)
        Text('OUT Item ${rcpt.outFruitId} * ${rcpt.outFruitCount}'),
      // 出て行く コイン 個数
      if (rcpt.outBananaCount > 0) Text('OUT BNN ${rcpt.outBananaCount}'),

      // 入ってくる アイテム 個数
      if (rcpt.inFruitId != null)
        Text('IN Item ${rcpt.inFruitId} * ${rcpt.inFruitCount}'),
      // 入ってくる コイン 個数
      if (rcpt.inBananaCount > 0) Text('IN BNN ${rcpt.inBananaCount}'),
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
