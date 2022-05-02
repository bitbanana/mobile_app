import 'package:mobile_app/types/fruit_pocket.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class Notifier extends StateNotifier<List<FruitPocket>?> {
  Notifier(List<FruitPocket>? state) : super(state);
  update(List<FruitPocket>? state) {
    this.state = state;
  }
}

/// 公開
final fruitPockets = StateNotifierProvider<Notifier, List<FruitPocket>?>((ref) {
  // 初期化
  return Notifier(null);
});
