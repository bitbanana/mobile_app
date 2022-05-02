// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/types/sender_sig_content.dart';
part 'tx_page.freezed.dart';
part 'tx_page.g.dart';

@freezed
class TxPage with _$TxPage {
  const factory TxPage({
    required SenderSigContent cont,
    required String s_sig,
  }) = _TxPage;

  factory TxPage.fromJson(Map<String, Object?> json) => _$TxPageFromJson(json);
}
