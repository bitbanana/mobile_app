import 'package:mobile_app/types/user.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class Notifier extends StateNotifier<User> {
  Notifier(User state) : super(state);
  update(User state) {
    this.state = state;
  }
}

/// 公開
final user = StateNotifierProvider<Notifier, User>((ref) {
  // 初期化
  const initialState = User(
    address: 'myAdress0000',
    itemCounts: {
      1: 5,
      3: 7,
    },
  );
  return Notifier(initialState);
});
