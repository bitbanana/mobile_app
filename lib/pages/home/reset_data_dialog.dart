import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/bnn_card.dart';

class ResetDataDialog extends HookConsumerWidget {
  const ResetDataDialog({Key? key}) : super(key: key);

  _resetData(BuildContext context, WidgetRef ref) {
    print("データをリセットします");
    router.popTo(PageId.splash);
    ref.read(bnnCard.notifier).delete();
    router.push(PageId.createBnnKey);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// リセットデータボタン
    final resetDataButton = ElevatedButton(
      onPressed: () => _resetData(context, ref),
      child: const Text('データをリセット'),
    );
    return AlertDialog(
      title: const Text('データをリセット'),
      content:
          const Text('まだビットバナナの鍵を保存していない場合、ビットバナナが消えてしまいます。本当にリセットしてもよろしいですか？'),
      actions: [
        resetDataButton,
      ],
    );
  }
}
