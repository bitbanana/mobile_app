import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/types/bitbanana_key.dart';

class ImportBnnKeyDialog extends HookConsumerWidget {
  final void Function(BitbananaKey bnnKey) didImport;
  const ImportBnnKeyDialog({
    Key? key,
    required this.didImport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// importボタン
    final importButton = ElevatedButton(
      onPressed: () => importBnnKey(context, ref),
      child: const Text('選択する'),
    );

    return AlertDialog(
      title: const Text('鍵を使う'),
      content: const Text('PCやスマホに保存してある鍵を選んでください'),
      actions: [
        importButton,
      ],
    );
  }

  // インポートボタンを押下
  importBnnKey(BuildContext context, WidgetRef ref) async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );
    if (result != null) {
      final file = result.files.single.bytes!;
      final text = const Utf8Decoder().convert(file);
      try {
        final json = jsonDecode(text);
        final bnnKey = BitbananaKey.fromJson(json);
        Navigator.pop(context);
        didImport(bnnKey);
      } catch (err) {
        debugPrint('読み込みに失敗しました');
        debugPrint(err.toString());
      }
    } else {
      // User canceled the picker
    }
  }
}
