import 'package:freezed_annotation/freezed_annotation.dart';
part 'fruit_pocket.freezed.dart';
part 'fruit_pocket.g.dart';

@freezed
class FruitPocket with _$FruitPocket {
  const factory FruitPocket({
    // 所有者アドレス
    required String owner_addr,
    // フルーツ ID
    required int fruit_id,
    // 個数
    required int count,
  }) = _FruitPocket;

  factory FruitPocket.fromJson(Map<String, Object?> json) =>
      _$FruitPocketFromJson(json);
}
