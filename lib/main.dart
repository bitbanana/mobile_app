import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/router/navi_state.dart';
import 'package:mobile_app/router/navi_window.dart';
import 'package:mobile_app/router/router.dart';

void main() {
  const app = App();
  const scope = ProviderScope(child: app);
  runApp(scope);
}

/// アプリ
class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 現在の画面を指す State
    final state = ref.watch(baseNaviState);

    /// ナビゲーション遷移の Window
    final window = NaviWindow(
      state: state,
      popPage: () {
        // 前のページに戻る
        ref.read(router).popBaseNavi();
      },
    );
    return MaterialApp(home: window);
  }
}
