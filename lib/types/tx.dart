// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/types/sender_sig_content.dart';
part 'tx.freezed.dart';
part 'tx.g.dart';

@freezed
class Tx with _$Tx {
  const factory Tx({
    required String s_addr,
    required SenderSigContent s_sig_cont,
    required String s_sig,
  }) = _Tx;

  factory Tx.fromJson(Map<String, Object?> json) => _$TxFromJson(json);
}
