import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/receipt.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      debugPrint('タブを初期化します');
      initTabRouter();
      return null;
    }, []);
    return OnAppear(
      () {
        router.setLogger((log) {
          debugPrint('UI-Router: $log');
        });
        router.willPush((left, right) {
          final fromGuilde =
              right == PageId.sellGuide || right == PageId.buyGuide;
          final toTop = left == PageId.top;
          if (fromGuilde && toTop) {
            debugPrint('レシートを廃棄します');
            ref.read(receipt.notifier).update(null);
          }
          return true;
        });
      },
      child: tabRouter!.widget(enableMaterialYou: true), //選択中のタブ
    );
  }
}
