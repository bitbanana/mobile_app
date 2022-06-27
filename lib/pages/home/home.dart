// ignore: avoid_web_libraries_in_flutter
import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/components/flip_view.dart';
import 'package:mobile_app/components/rotating.dart';
import 'package:mobile_app/features/fetch_balance.dart';
import 'package:mobile_app/pages/home/edit_nickname_dialog.dart';
import 'package:mobile_app/pages/home/export_bnn_key_dialog.dart';
import 'package:mobile_app/pages/home/reset_data_dialog.dart';
import 'package:mobile_app/pages/home/bitbanana_card.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/bnn_card.dart';
import 'package:mobile_app/web_api/start_bonus.dart';

/// アプリ
class Home extends HookConsumerWidget {
  Home({Key? key}) : super(key: key);

  final controller = FlipController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bnnCardState = ref.watch(bnnCard);
    if (bnnCardState == null) {
      return const Text('BnnCardが見つかりません');
    }

    /// Exportボタン
    final exportButton = ElevatedButton(
      onPressed: () => _exportKey(context),
      child: const Text('ビットバナナの鍵を保存'),
    );

    final bnnCoin = SizedBox(
      width: 80,
      height: 80,
      child: Image.asset('images/bitbanana-block.png'),
    );

    final screenSize = MediaQuery.of(context).size;
    final cardSize = bnnCardSize(screenW: screenSize.width);

    final bnnCardWidget = SizedBox(
      width: cardSize.width,
      height: cardSize.height,
      child: BitbananaCard(
        bnnKey: bnnCardState,
        width: cardSize.width,
        height: cardSize.height,
      ),
    );

    final column = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Bit Banana (ビットバナナ) β版'),
        Rotating(
          interval: 2,
          duration: 1,
          child: bnnCoin,
        ),
        exportButton,
        bnnCardWidget,
        Flip(
          controller: controller,
          duration: 3,
          startWithFront: true,
          direction: FlipDirection.vertical,
          frontChild: bnnCoin,
          backChild: bnnCoin,
        ),
      ],
    );

    /// 画面
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: column,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {
          showDialog<void>(
            context: context,
            builder: (_) {
              return EditNicknameDialog();
            },
          );
        },
      ),
    );
  }

  _exportKey(BuildContext context) {
    controller.flip();
    // showDialog(
    //   context: context,
    //   builder: (_) => const ExportBnnKeyDialog(),
    // );
  }
}
