import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/router/router.dart';

/// アプリ
class ReceiveStartBonus extends HookConsumerWidget {
  final void Function() onReady;
  const ReceiveStartBonus({Key? key, required this.onReady}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面
    return OnAppear(
      () async {
        await Future.delayed(const Duration(seconds: 3));
        // 表示されたら準備OK
        onReady();
      },
      child: Text('ReceiveStartBonus'),
    );
  }
}
