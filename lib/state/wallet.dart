import 'package:mobile_app/types/wallet.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class Notifier extends StateNotifier<Wallet> {
  Notifier(Wallet state) : super(state);
  update(Wallet state) {
    this.state = state;
  }
}

/// 公開
final wallet = StateNotifierProvider<Notifier, Wallet>((ref) {
  // 初期化
  const initialState = Wallet(
    balance: 500,
  );
  return Notifier(initialState);
});
