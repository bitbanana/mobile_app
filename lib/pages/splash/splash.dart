import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// アプリ
class Splash extends HookConsumerWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面上のバー
    final appBar = AppBar(title: const Text('Splash'));

    const center = Center(child: Text('スプラッシュ'));

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: center,
    );
  }
}
