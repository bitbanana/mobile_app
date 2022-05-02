import 'package:mobile_app/types/day_fruit.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class Notifier extends StateNotifier<List<DayFruit>?> {
  Notifier(List<DayFruit>? state) : super(state);
  update(List<DayFruit>? state) {
    this.state = state;
  }
}

/// 公開
final dayFruits = StateNotifierProvider<Notifier, List<DayFruit>?>((ref) {
  // 初期化
  return Notifier(null);
});
