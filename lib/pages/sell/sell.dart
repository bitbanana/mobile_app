import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/config/fruit_configs.dart';
import 'package:mobile_app/config/param_keys.dart';
import 'package:mobile_app/features/fetch_fruits.dart';
import 'package:mobile_app/features/fetch_pockets.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/bitfruits.dart';
import 'package:mobile_app/state/fruit_pockets.dart';
import 'package:mobile_app/types/fruit_pocket.dart';

/// アプリ
class Sell extends HookConsumerWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fruits = ref.watch(bitfruits);
    final pockets = ref.watch(fruitPockets);

    if (fruits == null || pockets == null) {
      /// 表示されたとき
      final onAppear = OnAppear(
        () {
          debugPrint('Sell からデータをフェッチします');
          if (fruits == null) {
            fetchFruits(ref);
          }
          if (pockets == null) {
            fetchPockets(ref);
          }
        },
        child: const Text('画面準備中...'),
      );
      return onAppear;
    }

    /// マイフルーツ ヘッダー
    final header = SizedBox(
      width: double.infinity,
      child: Image.asset(
        'images/sell-header.png',
      ),
    );

    /// リスト
    final list = ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          buildItem(pockets[index], ref),
      itemCount: pockets.length,
    );

    /// 画面
    return Scaffold(
      backgroundColor: const Color(0xFF7F6000),
      body: Column(
        children: [
          header,
          Expanded(
            child: list,
          ),
        ],
      ),
    );
  }

  /// リストアイテム
  Widget buildItem(FruitPocket p, WidgetRef ref) {
    final fix = fruitConfigs.firstWhere((e) => e.fruit_id == p.fruit_id);
    final dayF =
        ref.read(bitfruits)!.firstWhere((e) => e.fruit_id == p.fruit_id);
    return Card(
      child: ListTile(
        leading: const Icon(Icons.people),
        title:
            Text('${fix.image_uri} ${p.count} (BNN: ${p.count * dayF.price})'),
        onTap: () {
          router.push(PageId.sellGuide, params: {FRUIT_ID: '${p.fruit_id}'});
        },
      ),
    );
  }
}
