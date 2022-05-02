// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'sender_sig_content.freezed.dart';
part 'sender_sig_content.g.dart';

@freezed
class SenderSigContent with _$SenderSigContent {
  const factory SenderSigContent({
    required String addr,
    required String tx_id,
    required int tx_page,
    required int tx_all_pages,
    required String r_addr,
    required int amount,
    required int fee,
  }) = _SenderSigContent;

  factory SenderSigContent.fromJson(Map<String, Object?> json) =>
      _$SenderSigContentFromJson(json);
}
