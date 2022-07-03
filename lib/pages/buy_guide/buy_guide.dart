import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/components/item_header.dart';
import 'package:mobile_app/components/item_stepper.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/bitfruits.dart';
import 'package:mobile_app/state/receipt.dart';
import 'package:mobile_app/types/receipt.dart';

/// アプリ
class BuyGuide extends HookConsumerWidget {
  final String? fruitId;
  const BuyGuide({required this.fruitId, Key? key}) : super(key: key);

  initRcpt(WidgetRef ref) {
    final fId = int.parse(fruitId!);
    final fruits = ref.read(bitfruits)!;
    final f = fruits.firstWhere((e) => e.fruit_id == fId);
    final rcpt = Receipt(
      outFruitId: null,
      outFruitCount: 0,
      outBananas: f.price,
      inFruitId: fId,
      inFruitCount: 1,
      inBananas: 0,
    );
    ref.read(receipt.notifier).update(rcpt);
  }

  onChangeCount(WidgetRef ref, int count) {
    final fId = int.parse(fruitId!);
    final fruits = ref.read(bitfruits)!;
    final f = fruits.firstWhere((e) => e.fruit_id == fId);
    final oldRcpt = ref.read(receipt)!;
    final newRcpt = Receipt(
      outFruitId: oldRcpt.outFruitId,
      outFruitCount: oldRcpt.outFruitCount,
      outBananas: count * f.price, // ここを変更
      inFruitId: oldRcpt.inFruitId,
      inFruitCount: count, // ここを変更
      inBananas: oldRcpt.inBananas,
    );
    ref.read(receipt.notifier).update(newRcpt);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rcpt = ref.watch(receipt);

    if (rcpt == null) {
      // 画面が表示されたとき
      final onAppear = OnAppear(
        () {
          debugPrint('Buy Guide から レシート を初期化します');
          initRcpt(ref);
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
          router.push(PageId.fruitDetail);
        },
      ),
      ItemStepper(
        maxCount: 20,
        minCount: 1,
        initilalCount: 1,
        onChangeCount: (count) => onChangeCount(ref, count),
      ),
      button,
      Text('受け取った Item ID: $fruitId'),
    ]);
    final center = Center(child: column);

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: center,
    );
  }
}
