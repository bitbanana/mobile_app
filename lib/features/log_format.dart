import 'package:mobile_app/types/bitbanana_key.dart';

String fmtKey(BitbananaKey bnnKey) {
  return '''BNN-Key: ${bnnKey.nickname} balance: ${bnnKey.balance_memo}''';
}
