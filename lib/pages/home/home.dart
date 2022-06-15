// ignore: avoid_web_libraries_in_flutter
import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/features/fetch_balance.dart';
import 'package:mobile_app/pages/home/edit_nickname_dialog.dart';
import 'package:mobile_app/pages/home/export_bnn_key_dialog.dart';
import 'package:mobile_app/pages/home/reset_data_dialog.dart';
import 'package:mobile_app/pages/home/wallet_card.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/wallet.dart';
import 'package:mobile_app/web_api/start_bonus.dart';

/// アプリ
class Home extends HookConsumerWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _wallet = ref.watch(wallet);
    if (_wallet == null) {
      return const Text('Walletが見つかりません');
    }

    /// Exportボタン
    final exportButton = ElevatedButton(
      onPressed: () => _exportKey(context),
      child: const Text('ビットバナナの鍵を保存'),
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

    /// データをリセットボタン
    final resetDataButton = ElevatedButton(
      onPressed: () => _resetData(context, ref),
      child: const Text('resetData'),
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
        exportButton,
        debugButton,
        fetchBalanceButton,
        resetDataButton,
        center,
      ],
    );

    /// 画面
    return Scaffold(
      appBar: BlueAppBar(title: 'Bit Banana (ビットバナナ) β版'),
      backgroundColor: Colors.grey[200],
      body: column,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {
          showDialog<void>(
            context: context,
            builder: (_) {
              return EditNicknameDialog();
            },
          );
        },
      ),
    );
  }

  _exportKey(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => const ExportBnnKeyDialog(),
    );
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

  _resetData(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (_) => const ResetDataDialog(),
    );
  }
}
