// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'bitbanana_wallet.freezed.dart';
part 'bitbanana_wallet.g.dart';

@freezed
class BitbananaWallet with _$BitbananaWallet {
  const factory BitbananaWallet({
    required String addr,
    required String jwk,
    required int balance_memo,
    required String nickname,
    required String created_at,
    required String version,
  }) = _BitbananaWallet;

  factory BitbananaWallet.fromJson(Map<String, Object?> json) =>
      _$BitbananaWalletFromJson(json);
}
