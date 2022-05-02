import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/components/item_header.dart';
import 'package:mobile_app/components/item_stepper.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/day_fruits.dart';
import 'package:mobile_app/state/receipt.dart';
import 'package:mobile_app/types/receipt.dart';

/// アプリ
class BuyGuide extends HookConsumerWidget {
  final String? fruit_id;
  const BuyGuide({required this.fruit_id, Key? key}) : super(key: key);

  initRcpt(WidgetRef ref, int f_id) {
    final fruits = ref.read(dayFruits)!;
    final f = fruits.firstWhere((e) => e.fruit_id == f_id);
    final rcpt = Receipt(
      outItemId: null,
      outItemCount: 0,
      outCoinCount: f.price,
      inItemId: f_id,
      inItemCount: 1,
      inCoinCount: 0,
    );
    ref.read(receipt.notifier).update(rcpt);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rcpt = ref.watch(receipt);

    if (rcpt == null) {
      // 画面が表示されたとき
      final onAppear = OnAppear(
        () {
          debugPrint('Buy Guide から レシート を初期化します');
          if (fruit_id == null) return;
          final fId = int.parse(fruit_id!);
          initRcpt(ref, fId);
        },
        child: const Text('画面を準備中...'),
      );
      return onAppear;
    }

    /// 画面上のバー
    final appBar = BlueAppBar(title: 'Buy Guide (購入編集画面)', canBack: true);

    /// 取引確認画面へ進むボタン
    final button = ElevatedButton(
      onPressed: () {
        router.push(PageId.tradeConfirm);
      },
      child: const Text('Buy'),
    );

    final column = Column(children: [
      ItemHeader(
        onPressedDetail: () {
          router.push(PageId.itemDetail);
        },
      ),
      ItemStepper(),
      button,
      Text('受け取った Item ID: $fruit_id'),
    ]);
    final center = Center(child: column);

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: center,
    );
  }
}
