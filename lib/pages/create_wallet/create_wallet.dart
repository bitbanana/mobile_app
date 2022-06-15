import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/features/create_new_wallet.dart';
import 'package:mobile_app/features/init_contents.dart';
import 'package:mobile_app/router/router.dart';
import 'package:file_picker/file_picker.dart';
import 'package:mobile_app/types/bitbanana_wallet.dart';

/// アプリ
class CreateWallet extends HookConsumerWidget {
  const CreateWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面上のバー
    final appBar = BlueAppBar(
      title: 'Wallet読み込み',
      canBack: false,
    );

    // Newスタートボタン
    final newStartBtn = ElevatedButton(
      onPressed: () => newStart(ref),
      child: const Text('New Start'),
    );

    // インポートボタン
    final importBtn = ElevatedButton(
      onPressed: () => importWallet(ref),
      child: const Text('import'),
    );

    // Column
    final col = Column(
      children: [
        importBtn,
        newStartBtn,
      ],
    );

    // センター
    final center = Center(child: col);

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: center,
    );
  }

  // Newスタートボタンを押下
  newStart(WidgetRef ref) async {
    // 新規 Wallet を準備
    final w = createNewWallet();
    await initContents(ref: ref, myWallet: w);
    // top画面へ遷移
    router.push(PageId.onboarding);
  }

  // インポートボタンを押下
  importWallet(WidgetRef ref) async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );
    if (result != null) {
      final file = result.files.single.bytes!;
      final text = const Utf8Decoder().convert(file);
      try {
        final json = jsonDecode(text);
        final wallet = BitbananaWallet.fromJson(json);
        initContents(ref: ref, myWallet: wallet);
        // top画面へ遷移
        router.push(PageId.top);
      } catch (err) {
        debugPrint('読み込みに失敗しました');
      }
    } else {
      // User canceled the picker
    }
  }
}
