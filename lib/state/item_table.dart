import 'package:mobile_app/types/item_table.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class Notifier extends StateNotifier<ItemTable> {
  Notifier(ItemTable state) : super(state);
  update(ItemTable state) {
    this.state = state;
  }
}

/// 公開
final itemTable = StateNotifierProvider<Notifier, ItemTable>((ref) {
  // 初期化
  const initialState = ItemTable(
    itemPrices: {
      1: 200,
      3: 40,
    },
  );
  return Notifier(initialState);
});
