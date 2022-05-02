import 'package:mobile_app/types/receipt.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class Notifier extends StateNotifier<Receipt?> {
  Notifier(Receipt? state) : super(state);
  update(Receipt? state) {
    this.state = state;
  }
}

/// 公開
final receipt = StateNotifierProvider<Notifier, Receipt?>((ref) {
  // 初期化
  return Notifier(null);
});
