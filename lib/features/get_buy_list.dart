import 'package:mobile_app/config/item_config.dart';
import 'package:mobile_app/types/buy_list_item.dart';
import 'package:mobile_app/types/item_table.dart';

List<BuyListItem> getBuyList(ItemTable table) {
  final List<BuyListItem> listItems = [];

  for (var itemId in table.itemPrices.keys) {
    /// 現在のアイテムの価値
    final price = table.itemPrices[itemId]!;

    /// アイテムの名前
    final name = itemConfig.itemNames[itemId] ?? '未知のアイテム';
    final imageUrl = itemConfig.itemImageUrls[itemId] ?? 'URLが見つかりません';

    final listItem = BuyListItem(
      itemId: itemId,
      imageUrl: imageUrl,
      name: name,
      price: price,
    );
    listItems.add(listItem);
  }
  return listItems;
}
