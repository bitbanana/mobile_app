import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/on_appear.dart';
import 'package:mobile_app/components/price_tag.dart';
import 'package:mobile_app/components/uri_image.dart';
import 'package:mobile_app/config/fruit_configs.dart';
import 'package:mobile_app/config/param_keys.dart';
import 'package:mobile_app/features/fetch_fruits.dart';
import 'package:mobile_app/router/router.dart';
import 'package:mobile_app/state/bitfruits.dart';
import 'package:mobile_app/types/bitfruit.dart';
import 'package:collection/collection.dart';
import 'package:mobile_app/types/bitfruit_config.dart';

/// アプリ
class Buy extends HookConsumerWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fruits = ref.watch(bitfruits);

    if (fruits == null) {
      /// 表示されたとき
      final onAppear = OnAppear(
        () {
          debugPrint('Buy からデータをフェッチします');
          fetchFruits(ref);
        },
        child: const Text('画面準備中...'),
      );
      return onAppear;
    }

    /// ショップヘッダー
    final header = SizedBox(
      width: double.infinity,
      child: Image.asset(
        'images/buy-header.png',
      ),
    );

    /// リスト
    final list = ListView.builder(
      padding: const EdgeInsets.all(12),
      itemBuilder: (BuildContext context, int index) =>
          buildItem(fruits[index], ref),
      itemCount: fruits.length,
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
  Widget buildItem(Bitfruit f, WidgetRef ref) {
    var config = fruitConfigs.firstWhereOrNull((e) => e.fruit_id == f.fruit_id);
    config ??= BitfruitConfig(
      fruit_id: f.fruit_id,
      nickname: '不明なフルーツ',
      image_uri: 'assets://placeholder.png',
    );

    final priceTag = PriceTag(
      price: f.price,
      color: Colors.indigo,
    );

    final fruitName = Text(
      config.nickname,
      maxLines: 1,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 24,
        color: Colors.brown[600],
      ),
    );

    final item = Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[100],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            onTap: () {
              router.push(PageId.buyGuide, params: {FRUIT_ID: '${f.fruit_id}'});
            },
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(18),
                  color: Colors.yellow[300],
                  width: 80,
                  height: 80,
                  child: UriImage(config.image_uri),
                ),
                const SizedBox(width: 4),
                fruitName,
                const Spacer(),
                priceTag,
                const SizedBox(width: 4),
              ],
            ),
          ),
        ),
      ),
    );

    return item;
  }
}
