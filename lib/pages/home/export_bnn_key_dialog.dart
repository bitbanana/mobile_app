import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/state/wallet.dart';

class ExportBnnKeyDialog extends HookConsumerWidget {
  const ExportBnnKeyDialog({Key? key}) : super(key: key);

  download(BuildContext context, WidgetRef ref) {
    Navigator.pop(context);
    final _wallet = ref.read(wallet);
    const encoder = JsonEncoder.withIndent('  ');
    String fileContent = encoder.convert(_wallet);
    AnchorElement(href: 'data:application/json;charset=utf-8,$fileContent')
      ..setAttribute('download', 'bitbanana_wallet.json')
      ..click();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// ダウンロードボタン
    final exportButton = ElevatedButton(
      onPressed: () => download(context, ref),
      child: const Text('download'),
    );
    return AlertDialog(
      title: const Text('鍵を保存'),
      content: const Text('PCやスマホに鍵をダウンロードします'),
      actions: [
        exportButton,
      ],
    );
  }
}
