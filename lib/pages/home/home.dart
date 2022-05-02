// ignore: avoid_web_libraries_in_flutter
import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/components/digital_counter.dart';
import 'package:mobile_app/pages/home/wallet_card.dart';
import 'package:mobile_app/state/wallet.dart';

/// アプリ
class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _wallet = ref.read(wallet);

    /// ダウンロードボタン
    final downloadButton = ElevatedButton(
      onPressed: () => download(ref),
      child: const Text('download'),
    );

    final column = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        downloadButton,
        Text(_wallet!.nickname),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DigitalCounter(_wallet.balance_memo),
          ],
        ),
      ],
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

    /// 画面
    return Scaffold(
      appBar: BlueAppBar(title: 'Bit Banana (ビットバナナ) β版'),
      backgroundColor: Colors.grey[200],
      body: center,
    );
  }

  download(WidgetRef ref) {
    final _wallet = ref.read(wallet);
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String fileContent = encoder.convert(_wallet);
    AnchorElement(href: 'data:text/plain;charset=utf-8,$fileContent')
      ..setAttribute('download', 'bitbanana_wallet.json')
      ..click();
  }
}
