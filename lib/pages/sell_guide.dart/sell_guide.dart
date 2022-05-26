import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/components/item_header.dart';
import 'package:mobile_app/components/item_stepper.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/bitfruits.dart';
import 'package:mobile_app/state/fruit_pockets.dart';
import 'package:mobile_app/state/receipt.dart';
import 'package:mobile_app/types/receipt.dart';

/// アプリ
class SellGuide extends HookConsumerWidget {
  final String? fruitId;
  const SellGuide({required this.fruitId, Key? key}) : super(key: key);

  initRcpt(WidgetRef ref, int fId) {
    final fruits = ref.read(bitfruits)!;
    final pockets = ref.read(fruitPockets)!;
    final f = fruits.firstWhere((e) => e.fruit_id == fId);
    final p = pockets.firstWhere((e) => e.fruit_id == fId);
    final rcpt = Receipt(
      outFruitId: fId,
      outFruitCount: p.count,
      outBananaCount: 0,
      inFruitId: null,
      inFruitCount: 0,
      inBananaCount: p.count * f.price,
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
          debugPrint('Sell Guide から レシート を初期化します');
          if (fruitId == null) return;
          final fId = int.parse(fruitId!);
          initRcpt(ref, fId);
        },
        child: const Text('画面を準備中...'),
      );
      return onAppear;
    }

    /// 画面上のバー
    final appBar = BlueAppBar(title: 'Sell Guide (売却編集画面)', canBack: true);

    final button = ElevatedButton(
      onPressed: () {
        router.push(PageId.tradeConfirm);
      },
      child: const Text('Sell'),
    );

    final column = Column(children: [
      ItemHeader(
        onPressedDetail: () {
          router.push(PageId.itemDetail);
        },
      ),
      const ItemStepper(),
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
