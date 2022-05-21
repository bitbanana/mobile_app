import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/config/fixed_fruits.dart';
import 'package:mobile_app/config/param_keys.dart';
import 'package:mobile_app/features/fetch_day_fruits.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/day_fruits.dart';
import 'package:mobile_app/types/day_fruit.dart';
import 'package:collection/collection.dart';
import 'package:mobile_app/types/fixed_fruit.dart';

/// アプリ
class Buy extends HookConsumerWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fruits = ref.watch(dayFruits);

    if (fruits == null) {
      /// 表示されたとき
      final onAppear = OnAppear(
        () {
          debugPrint('Buy からデータをフェッチします');
          fetchDayFruits(ref);
        },
        child: const Text('画面準備中...'),
      );
      return onAppear;
    }

    /// 画面上のバー
    final appBar = BlueAppBar(title: 'Buy (購入可能フルーツ一覧)');

    /// リスト
    final list = ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          buildItem(fruits[index], ref),
      itemCount: fruits.length,
    );

    /// 画面
    return Scaffold(
      appBar: appBar,
      body: list,
    );
  }

  /// リストアイテム
  Widget buildItem(DayFruit f, WidgetRef ref) {
    var fix = fixedFruits.firstWhereOrNull((e) => e.fruit_id == f.fruit_id);
    fix ??= FixedFruit(
      fruit_id: f.fruit_id,
      nickname: '不明なフルーツ',
      image_url: '',
    );

    return Card(
      child: ListTile(
        leading: Icon(Icons.people),
        title: Text('${fix.image_url} ${fix.nickname} (\$: ${f.price})'),
        onTap: () {
          router.push(PageId.buyGuide, params: {FRUIT_ID: '${f.fruit_id}'});
        },
      ),
    );
  }
}
