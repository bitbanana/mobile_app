import 'package:mobile_app/features/storage.dart';
import 'package:mobile_app/types/bitbanana_wallet.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class Notifier extends StateNotifier<BitbananaWallet?> {
  Notifier(BitbananaWallet? state) : super(state);
  update(BitbananaWallet state) {
    this.state = state;
    // ストレージへ保存
    Storage().saveWallet(state);
  }

  delete() {
    state = null;
    // ストレージから削除
    Storage().deleteWallet();
  }
}

/// 公開
final wallet = StateNotifierProvider<Notifier, BitbananaWallet?>((ref) {
  // 初期化
  return Notifier(null);
});
