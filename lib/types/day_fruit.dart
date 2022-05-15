// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'day_fruit.freezed.dart';
part 'day_fruit.g.dart';

@freezed
class DayFruit with _$DayFruit {
  const factory DayFruit({
    // ビットフルーツ ID
    required int fruit_id,
    // 日付
    required String yyyymmdd,
    // 買われた数
    required int buy_count,
    // 売られた数
    required int sell_count,
    // 昨日の価格
    required int price_ytd,
    // 現在の価格
    required int price,
  }) = _DayFruit;

  factory DayFruit.fromJson(Map<String, Object?> json) =>
      _$DayFruitFromJson(json);
}
