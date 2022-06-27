import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/features/create_bnn_key.dart';
import 'package:mobile_app/features/init_contents.dart';
import 'package:mobile_app/pages/create_bnn_key/import_bnn_key_dialog.dart';
import 'package:mobile_app/router/router.dart';

/// アプリ
class CreateBnnKey extends HookConsumerWidget {
  const CreateBnnKey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面上のバー
    final appBar = BlueAppBar(
      title: 'BnnKey読み込み',
      canBack: false,
    );

    // Newスタートボタン
    final newStartBtn = ElevatedButton(
      onPressed: () => newStart(ref),
      child: const Text('New Start'),
    );

    // インポートボタン
    final importBtn = ElevatedButton(
      onPressed: () => _importBnnKey(context, ref),
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
    // 新規 BnnKey を準備
    final bnnKey = createBnnKey();
    await initContents(ref: ref, bnnKey: bnnKey);
    // top画面へ遷移
    router.push(PageId.onboarding);
  }

  // インポートボタンを押下
  _importBnnKey(BuildContext context, WidgetRef ref) {
    final dialog = ImportBnnKeyDialog(
      didImport: (bnnKey) async {
        // 読み込んだBnnKeyで初期化
        await initContents(ref: ref, bnnKey: bnnKey);
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
