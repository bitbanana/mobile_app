import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
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

    /// 画面上のバー
    final appBar = BlueAppBar(title: 'Sell (Myフルーツ一覧)');

    /// リスト
    final list = ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          buildItem(pockets[index], ref),
      itemCount: pockets.length,
    );

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: list,
    );
  }

  /// リストアイテム
  Widget buildItem(FruitPocket p, WidgetRef ref) {
    final fix = fruitConfigs.firstWhere((e) => e.fruit_id == p.fruit_id);
    final dayF =
        ref.read(bitfruits)!.firstWhere((e) => e.fruit_id == p.fruit_id);
    return Card(
      child: ListTile(
        leading: Icon(Icons.people),
        title:
            Text('${fix.image_url} ${p.count} (BNN: ${p.count * dayF.price})'),
        onTap: () {
          router.push(PageId.sellGuide, params: {FRUIT_ID: '${p.fruit_id}'});
        },
      ),
    );
  }
}
