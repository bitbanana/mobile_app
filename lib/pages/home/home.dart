// ignore: avoid_web_libraries_in_flutter
import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/components/digital_counter.dart';
import 'package:mobile_app/features/fetch_balance.dart';
import 'package:mobile_app/pages/home/wallet_card.dart';
import 'package:mobile_app/state/wallet.dart';
import 'package:mobile_app/types/buy_order.dart';
import 'package:mobile_app/types/sell_order.dart';
import 'package:mobile_app/web_api/buy_fruits.dart';
import 'package:mobile_app/web_api/see_fruits.dart';
import 'package:mobile_app/web_api/see_pockets.dart';
import 'package:mobile_app/web_api/sell_fruits.dart';
import 'package:mobile_app/web_api/start_bonus.dart';

/// アプリ
class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _wallet = ref.watch(wallet);
    if (_wallet == null) {
      return const Text('Walletが見つかりません');
    }

    /// ダウンロードボタン
    final downloadButton = ElevatedButton(
      onPressed: () => download(ref),
      child: const Text('download'),
    );

    /// Debugボタン
    final debugButton = ElevatedButton(
      onPressed: () => debug(ref),
      child: const Text('debug'),
    );

    /// 残高更新ボタン
    final fetchBalanceButton = ElevatedButton(
      onPressed: () => _fetchBalance(ref),
      child: const Text('fetchBalance'),
    );

    final screenSize = MediaQuery.of(context).size;
    final wCardSize = walletCardSize(screenW: screenSize.width);

    final wCard = SizedBox(
      width: wCardSize.width,
      height: wCardSize.height,
      child: WalletCard(
        wallet: _wallet,
        width: wCardSize.width,
        height: wCardSize.height,
      ),
    );

    final center = Center(child: wCard);

    final column = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        downloadButton,
        debugButton,
        fetchBalanceButton,
        center,
      ],
    );

    /// 画面
    return Scaffold(
      appBar: BlueAppBar(title: 'Bit Banana (ビットバナナ) β版'),
      backgroundColor: Colors.grey[200],
      body: column,
    );
  }

  download(WidgetRef ref) {
    final _wallet = ref.read(wallet);
    const encoder = JsonEncoder.withIndent('  ');
    String fileContent = encoder.convert(_wallet);
    AnchorElement(href: 'data:text/plain;charset=utf-8,$fileContent')
      ..setAttribute('download', 'bitbanana_wallet.json')
      ..click();
  }

  debug(WidgetRef ref) async {
    // 1
    // await fetchBalance(ref);
    // 2
    final _wallet = ref.read(wallet)!;
    final req = StartBonusReq(addr: _wallet.addr);
    final res = await req.send();
    // 3
    // final req = SeeFruitsReq();
    // final res = await req.send();
    // 4
    // final _wallet = ref.read(wallet)!;
    // final req = SeePocketsReq(addr: _wallet.addr);
    // final res = await req.send();
    // 5
    // final order = BuyOrder(addr: "MyAddr", fruit_id: 0, count: 5);
    // final req = BuyFruitsReq(order: order);
    // final res = await req.send();
    // 6
    // final order = SellOrder(addr: "MyAddr", fruit_id: 0, count: 5);
    // final req = SellFruitsReq(order: order);
    // final res = await req.send();
  }

  _fetchBalance(WidgetRef ref) async {
    await fetchBalance(ref);
  }
}
