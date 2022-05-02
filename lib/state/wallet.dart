import 'package:mobile_app/types/bitbanana_wallet.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class Notifier extends StateNotifier<BitbananaWallet?> {
  Notifier(BitbananaWallet? state) : super(state);
  update(BitbananaWallet state) {
    this.state = state;
  }
}

/// 公開
final wallet = StateNotifierProvider<Notifier, BitbananaWallet?>((ref) {
  // 初期化
  return Notifier(null);
});
