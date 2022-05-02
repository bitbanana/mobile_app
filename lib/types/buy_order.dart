import 'package:freezed_annotation/freezed_annotation.dart';
part 'buy_order.freezed.dart';
part 'buy_order.g.dart';

@freezed
class BuyOrder with _$BuyOrder {
  const factory BuyOrder({
    // 購入者のアドレス
    required String addr,
    // 購入するビットフルーツのID
    required int fruit_id,
    // 個数
    required int count,
  }) = _BuyOrder;

  factory BuyOrder.fromJson(Map<String, Object?> json) =>
      _$BuyOrderFromJson(json);
}
