import 'package:mobile_app/types/bitfruit.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class Notifier extends StateNotifier<List<Bitfruit>?> {
  Notifier(List<Bitfruit>? state) : super(state);
  update(List<Bitfruit>? state) {
    this.state = state;
  }
}

/// 公開
final bitfruits = StateNotifierProvider<Notifier, List<Bitfruit>?>((ref) {
  // 初期化
  return Notifier(null);
});
