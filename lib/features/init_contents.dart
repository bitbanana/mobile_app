//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/features/fetch_fruits.dart';
import 'package:mobile_app/features/fetch_pockets.dart';
import 'package:mobile_app/features/storage.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/wallet.dart';
import 'package:mobile_app/types/bitbanana_wallet.dart';

/// データを読み込んで Wallet を使用可能な状態にする
initContents({
  required WidgetRef ref,
  required BitbananaWallet myWallet,
}) async {
  debugPrint('データ読み込みを開始します');
  await router.loading(
    label: '準備しています...',
    task: () async {
      ref.read(wallet.notifier).update(myWallet); // Walletを保存
      await fetchFruits(ref); // 現在のフルーツ価格を取得
      await fetchPockets(ref); // ユーザーが所持するフルーツを取得
    },
  );
  debugPrint('データ読み込みを完了しました');
}
