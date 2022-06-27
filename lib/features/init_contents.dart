//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/features/fetch_fruits.dart';
import 'package:mobile_app/features/fetch_pockets.dart';
import 'package:mobile_app/features/scheduled_tasks.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/bnn_card.dart';
import 'package:mobile_app/types/bitbanana_key.dart';

/// データを読み込んで BitbananaCard を使用可能な状態にする
Future<void> initContents({
  required WidgetRef ref,
  required BitbananaKey bnnKey,
}) async {
  debugPrint('データ読み込みを開始します');
  await router.loading(
    label: '準備しています...',
    task: () async {
      ref.read(bnnCard.notifier).update(bnnKey); // BitbananaKeyを保存
      await fetchFruits(ref); // 現在のフルーツ価格を取得
      await fetchPockets(ref); // ユーザーが所持するフルーツを取得
      setScheduledTasks(() {
        // 定期実行
        scheduledTasks(ref);
      });
    },
  );
  debugPrint('データ読み込みを完了しました');
}

scheduledTasks(WidgetRef ref) async {
  await router.loading(
    label: '準備しています...',
    task: () async {
      await fetchFruits(ref); // 現在のフルーツ価格を取得
      await fetchPockets(ref); // ユーザーが所持するフルーツを取得
    },
  );
}
