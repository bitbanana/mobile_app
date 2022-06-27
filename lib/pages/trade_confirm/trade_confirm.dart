import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/receipt.dart';
import 'package:mobile_app/state/bnn_card.dart';
import 'package:mobile_app/types/bitbanana_key.dart';
import 'package:mobile_app/types/buy_order.dart';
import 'package:mobile_app/types/receipt.dart';
import 'package:mobile_app/types/sell_order.dart';
import 'package:mobile_app/types/sender_sig_content.dart';
import 'package:mobile_app/types/tx.dart';
import 'package:mobile_app/utils/signing.dart';
import 'package:mobile_app/web_api/add_white_tx_bitfruit.dart';
import 'package:mobile_app/web_api/buy_fruits.dart';
import 'package:mobile_app/web_api/sell_fruits.dart';

/// アプリ
class TradeConfirm extends HookConsumerWidget {
  const TradeConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rcpt = ref.read(receipt);
    final _bnnCard = ref.read(bnnCard);
    if (rcpt == null) {
      return const Text('表示する取引レシートがありません');
    }

    /// 画面上のバー
    final appBar = BlueAppBar(title: 'Trade Confirm (取引確認)', canBack: true);

    final button = ElevatedButton(
      onPressed: () => onPressConfirm(rcpt, _bnnCard!),
      child: const Text('Buy'),
    );

    final column = Column(children: [
      // 出て行く アイテム 個数
      if (rcpt.outFruitId != null)
        Text('OUT Item ${rcpt.outFruitId} * ${rcpt.outFruitCount}'),
      // 出て行く コイン 個数
      if (rcpt.outBananas > 0) Text('OUT BNN ${rcpt.outBananas}'),

      // 入ってくる アイテム 個数
      if (rcpt.inFruitId != null)
        Text('IN Item ${rcpt.inFruitId} * ${rcpt.inFruitCount}'),
      // 入ってくる コイン 個数
      if (rcpt.inBananas > 0) Text('IN BNN ${rcpt.inBananas}'),
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

onPressConfirm(Receipt rcpt, BitbananaKey bnnKey) async {
  // 購入の場合
  if (rcpt.inFruitCount > 0) {
    final order = BuyOrder(
      addr: bnnKey.addr,
      fruit_id: rcpt.inFruitId!,
      count: rcpt.inFruitCount,
    );
    final req = BuyFruitsReq(order: order);
    print('購入リクエストを送ります');
    final res = await req.send();
    print(res.bill);
    // 請求書を受け取ったので、支払いを行う
    // FIXME: - 自分の要求したものかどうか確認
    final cont = SenderSigContent(
      tx_id: res.bill.tx_id,
      r_addr: res.bill.r_addr,
      amount: res.bill.amount,
      fee: 0,
    );
    final jsonCont = jsonEncode(cont);
    final sig = sign(sigContent: jsonCont, jwk: bnnKey.jwk);
    final tx = Tx(
      s_addr: bnnKey.addr,
      s_sig_cont: cont,
      s_sig: sig,
    );
    final addTxReq = AddWhiteTxBitfruitReq(tx: tx);
    print('支払いリクエストを送ります');
    final addTxRes = await addTxReq.send();
    router.push(PageId.tradeResult);
  }
  // 売却の場合
  if (rcpt.outFruitCount > 0) {
    final order = SellOrder(
      addr: bnnKey.addr,
      fruit_id: rcpt.outFruitId!,
      count: rcpt.outFruitCount,
    );
    final req = SellFruitsReq(order: order);
    final res = await req.send();
    print(res);
    router.push(PageId.tradeResult);
  }
}
