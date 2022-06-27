import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/features/init_contents.dart';
import 'package:mobile_app/features/storage.dart';
import 'package:mobile_app/router/router.dart';

/// アプリ
class Splash extends HookConsumerWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面上のバー
    final appBar = AppBar(title: const Text('Splash'));

    // スプラッシュ画像
    final img = Image.asset('images/bitbanana-icon.png');

    // 表示された時
    final onAppear = OnAppear(
      () async {
        // BnnKey を読み込む
        final bnnKey = await Storage().loadBnnKey();
        if (bnnKey != null) {
          debugPrint('既存のBnnKeyを読み込みました');
          // 読み込めたとき
          await initContents(ref: ref, bnnKey: bnnKey);
          // top画面へ遷移
          router.push(PageId.top);
        } else {
          // 見つからなかった時
          // create-bnn-key 画面へ遷移
          router.push(PageId.createBnnKey);
        }
      },
      child: img,
    );

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: onAppear,
    );
  }
}
