import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/router/router.dart';
import 'package:ui_router/ui_router.dart';

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
      onPressed: () async {
        final answer0Future = router.enqDialog('Bad');
        final answer1Future = router.enqDialog('Bad');
        final answer0 = await answer0Future;
        final answer1 = await answer1Future;
        if (answer0.type == UiAnswerType.ok) {
          router.deqDialog();
          router.push(PageId.top);
        }
      },
      label: const Text("Let's Start"),
      icon: const Icon(Icons.arrow_right),
      backgroundColor: Colors.green,
    );

    return finishButton;
  }
}
