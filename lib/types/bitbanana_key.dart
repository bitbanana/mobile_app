// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'bitbanana_key.freezed.dart';
part 'bitbanana_key.g.dart';

@freezed
class BitbananaKey with _$BitbananaKey {
  const factory BitbananaKey({
    required String addr,
    required String jwk,
    required int balance_memo,
    required String nickname,
    required String created_at,
    required String version,
  }) = _BitbananaKey;

  factory BitbananaKey.fromJson(Map<String, Object?> json) =>
      _$BitbananaKeyFromJson(json);
}
