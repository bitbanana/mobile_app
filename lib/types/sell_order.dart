import 'package:freezed_annotation/freezed_annotation.dart';
part 'sell_order.freezed.dart';
part 'sell_order.g.dart';

@freezed
class SellOrder with _$SellOrder {
  const factory SellOrder({
    // 購入者のアドレス
    required String addr,
    // 購入するビットフルーツのID
    required int fruit_id,
    // 個数
    required int count,
  }) = _SellOrder;

  factory SellOrder.fromJson(Map<String, Object?> json) =>
      _$SellOrderFromJson(json);
}
