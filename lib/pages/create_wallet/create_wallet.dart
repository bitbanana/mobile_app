import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/features/create_new_wallet.dart';
import 'package:mobile_app/features/init_contents.dart';
import 'package:mobile_app/pages/create_wallet/import_bnn_key_dialog.dart';
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
      onPressed: () => _importWallet(context, ref),
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
  _importWallet(BuildContext context, WidgetRef ref) {
    final dialog = ImportBnnKeyDialog(
      didImport: (wallet) async {
        // 読み込んだWalletで初期化
        await initContents(ref: ref, myWallet: wallet);
        // top画面へ遷移
        router.push(PageId.top);
      },
    );
    // ダイアログを表示
    showDialog(
      context: context,
      builder: (_) => dialog,
    );
  }
}
