import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/router/router.dart';

/// アプリ
class ReceiveStartBonus extends HookConsumerWidget {
  const ReceiveStartBonus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isReady = useState<bool>(false);

    if (!isReady.value) {
      /// 画面
      return OnAppear(
        () async {
          await Future.delayed(const Duration(seconds: 3));
          // 表示されたら準備OK
          isReady.value = true;
        },
        child: Text('ReceiveStartBonus...'),
      );
    }

    /// オンボーデング終了ボタン
    final finishButton = FloatingActionButton.extended(
      onPressed: () {
        router.push(PageId.top);
      },
      label: const Text("Let's Start"),
      icon: const Icon(Icons.arrow_right),
      backgroundColor: Colors.green,
    );

    return finishButton;
  }
}
