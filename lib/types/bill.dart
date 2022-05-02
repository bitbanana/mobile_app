import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/types/buy_order.dart';
part 'bill.freezed.dart';
part 'bill.g.dart';

@freezed
class Bill with _$Bill {
  const factory Bill({
    // ID
    required String id,
    // 支払い用の Tx ID
    required String tx_id,
    // 送金者のアドレス
    required String s_addr,
    // 振込先のアドレス
    required String r_addr,
    // 作成日時
    required String created_at,
    // 金額
    required int amount,
    // 購入注文
    required BuyOrder buy_order,
  }) = _Bill;

  factory Bill.fromJson(Map<String, Object?> json) => _$BillFromJson(json);
}
