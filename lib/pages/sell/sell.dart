import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/features/get_sell_list.dart';
import 'package:mobile_app/router/page_id.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/item_table.dart';
import 'package:mobile_app/state/receipt.dart';
import 'package:mobile_app/state/user.dart';
import 'package:mobile_app/types/receipt.dart';
import 'package:mobile_app/types/sell_list_item.dart';

/// アプリ
class Sell extends HookConsumerWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _user = ref.read(user);
    final _table = ref.watch(itemTable);
    final items = getSellList(_user, _table);

    /// 画面上のバー
    final appBar = AppBar(title: const Text('Sell'));

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
  Widget buildItem(SellListItem item, WidgetRef ref) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.people),
        title: Text('${item.imageUrl} ${item.count} (BNN: ${item.totalPrice})'),
        onTap: () {
          final rcpt = Receipt(
            outItemId: item.itemId,
            outItemCount: item.count,
            outCoinCount: 0,
            inItemId: null,
            inItemCount: 0,
            inCoinCount: item.totalPrice,
          );
          ref.read(receipt.notifier).update(rcpt);
          ref.read(router).pushBaseNavi(PageId.sellGuide);
        },
      ),
    );
  }
}
