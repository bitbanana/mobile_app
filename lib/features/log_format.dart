import 'package:mobile_app/types/bitbanana_wallet.dart';

String fmtWallet(BitbananaWallet wallet) {
  return '''Wallet: ${wallet.nickname} balance: ${wallet.balance_memo}''';
}
