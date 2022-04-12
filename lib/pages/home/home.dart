import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/digital_counter.dart';
import 'package:mobile_app/state/wallet.dart';

/// アプリ
class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _wallet = ref.read(wallet);

    /// 画面上のバー
    final appBar = AppBar(
      backgroundColor: Colors.black87,
      foregroundColor: Colors.yellow[200],
      title: const Text('Home'),
    );

    final column = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('ビットバナナ'),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DigitalCounter(_wallet.balance),
          ],
        ),
      ],
    );

    final center = Center(child: column);

    /// 画面
    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.yellow,
      body: center,
    );
  }
}
