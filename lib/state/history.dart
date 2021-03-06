import 'package:mobile_app/types/receipt.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class Notifier extends StateNotifier<List<Receipt>> {
  Notifier(List<Receipt> state) : super(state);
  update(List<Receipt> state) {
    this.state = state;
  }
}

/// 公開
final history = StateNotifierProvider<Notifier, List<Receipt>>((ref) {
  // 初期化
  return Notifier([
    const Receipt(
      outFruitId: 3,
      outFruitCount: 4,
      outBananas: 0,
      inFruitId: null,
      inFruitCount: 0,
      inBananas: 150,
    ),
  ]);
});
