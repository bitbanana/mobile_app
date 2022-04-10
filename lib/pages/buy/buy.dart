import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/features/get_buy_list.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/item_table.dart';
import 'package:mobile_app/state/receipt.dart';
import 'package:mobile_app/types/buy_list_item.dart';
import 'package:mobile_app/types/receipt.dart';

/// アプリ
class Buy extends HookConsumerWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final table = ref.watch(itemTable);
    final items = getBuyList(table);

    /// 画面上のバー
    final appBar = AppBar(title: const Text('Buy'));

    /// リスト
    final list = ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          buildItem(items[index], ref),
      itemCount: items.length,
    );

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: list,
    );
  }

  /// リストアイテム
  Widget buildItem(BuyListItem item, WidgetRef ref) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.people),
        title: Text('${item.imageUrl} ${item.name} (BNN: ${item.price})'),
        onTap: () {
          final rcpt = Receipt(
            outItemId: null,
            outItemCount: 0,
            outCoinCount: item.price,
            inItemId: item.itemId,
            inItemCount: 1,
            inCoinCount: 0,
          );
          ref.read(receipt.notifier).update(rcpt);
          router.push(PageId.buyGuide, params: {'item_id': '35'});
        },
      ),
    );
  }
}
