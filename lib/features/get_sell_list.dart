import 'package:mobile_app/types/user.dart';
import 'package:mobile_app/types/item_table.dart';
import 'package:mobile_app/types/sell_list_item.dart';

List<SellListItem> getSellList(User user, ItemTable table) {
  final List<SellListItem> listItems = [];

  for (var itemId in user.itemCounts.keys) {
    /// 所持数
    final count = user.itemCounts[itemId]!;

    /// 現在のアイテムの価値
    final price = table.itemPrices[itemId];
    if (price == null) {
      throw Exception('価格が不明です');
    }
    final totalPrice = count * price;
    final listItem = SellListItem(
      itemId: itemId,
      imageUrl: 'hello',
      count: count,
      totalPrice: totalPrice,
    );
    listItems.add(listItem);
  }
  return listItems;
}
