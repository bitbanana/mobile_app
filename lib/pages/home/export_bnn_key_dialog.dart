import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/state/bnn_card.dart';

class ExportBnnKeyDialog extends HookConsumerWidget {
  const ExportBnnKeyDialog({Key? key}) : super(key: key);

  download(BuildContext context, WidgetRef ref) {
    Navigator.pop(context);
    final _bnnCard = ref.read(bnnCard);
    const encoder = JsonEncoder.withIndent('  ');
    String fileContent = encoder.convert(_bnnCard);
    AnchorElement(href: 'data:application/json;charset=utf-8,$fileContent')
      ..setAttribute('download', 'bitbanana_key.json')
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
