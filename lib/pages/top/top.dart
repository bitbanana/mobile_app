import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/receipt.dart';

class Top extends ConsumerWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OnAppear(
      () {
        router.willPush((left, right) {
          final rNeed = right == PageId.sellGuide || right == PageId.buyGuide;
          if (left == PageId.top && rNeed) {
            debugPrint('レシートを廃棄します');
            ref.read(receipt.notifier).update(null);
          }
          return true;
        });
      },
      child: tabRouter.widget(enableMaterialYou: true), //選択中のタブ
    );
  }
}
