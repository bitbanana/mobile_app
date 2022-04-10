import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/item_header.dart';
import 'package:mobile_app/components/item_stepper.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/item_table.dart';
import 'package:mobile_app/state/receipt.dart';
import 'package:mobile_app/types/receipt.dart';

/// アプリ
class SellGuide extends HookConsumerWidget {
  const SellGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面上のバー
    final appBar = AppBar(title: const Text('Sell Guide'));

    final button = ElevatedButton(
      onPressed: () {
        final oldRcpt = ref.read(receipt)!;
        final itemId = oldRcpt.outItemId!;
        final price = ref.read(itemTable).itemPrices[itemId];
        if (price == null) {
          throw Exception('不明なアイテムです');
        }
        final stepperCount = 5;
        final inCoinCount = price * stepperCount;
        final newRcpt = Receipt(
          outItemId: itemId,
          outItemCount: 0,
          outCoinCount: 0,
          inItemId: null,
          inItemCount: stepperCount,
          inCoinCount: inCoinCount,
        );
        ref.read(receipt.notifier).update(newRcpt);
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
      ItemStepper(),
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
