import 'package:mobile_app/features/storage.dart';
import 'package:mobile_app/types/bitbanana_key.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class Notifier extends StateNotifier<BitbananaKey?> {
  Notifier(BitbananaKey? state) : super(state);
  update(BitbananaKey state) {
    this.state = state;
    // ストレージへ保存
    Storage().saveBnnKey(state);
  }

  delete() {
    state = null;
    // ストレージから削除
    Storage().deleteBnnKey();
  }
}

/// 公開
final bnnCard = StateNotifierProvider<Notifier, BitbananaKey?>((ref) {
  // 初期化
  return Notifier(null);
});
