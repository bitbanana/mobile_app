import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile_app/components/item_header.dart';
import 'package:mobile_app/components/item_stepper.dart';
import 'package:mobile_app/router/page_id.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/item_table.dart';
import 'package:mobile_app/state/receipt.dart';
import 'package:mobile_app/types/receipt.dart';

/// アプリ
class BuyGuide extends HookConsumerWidget {
  const BuyGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面上のバー
    final appBar = AppBar(title: const Text('Buy Guide'));

    final button = ElevatedButton(
      onPressed: () {
        final oldRcpt = ref.read(receipt)!;
        final itemId = oldRcpt.inItemId!;
        final price = ref.read(itemTable).itemPrices[itemId];
        if (price == null) {
          throw Exception('不明なアイテムです');
        }
        final stepperCount = 5;
        final outCoinCount = price * stepperCount;
        final newRcpt = Receipt(
          outItemId: null,
          outItemCount: 0,
          outCoinCount: outCoinCount,
          inItemId: itemId,
          inItemCount: stepperCount,
          inCoinCount: 0,
        );
        ref.read(receipt.notifier).update(newRcpt);
        ref.read(router).pushBaseNavi(PageId.tradeConfirm);
      },
      child: const Text('Buy'),
    );

    final column = Column(children: [
      ItemHeader(
        onPressedDetail: () {
          ref.read(router).pushBaseNavi(PageId.itemDetail);
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
