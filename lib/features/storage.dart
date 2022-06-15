import 'dart:convert';

import 'package:mobile_app/types/bitbanana_wallet.dart';
import 'package:mobile_app/utils/key_value_storage.dart';

const walletKey = 'WALLET';

class Storage {
  saveWallet(BitbananaWallet wallet) {
    final str = jsonEncode(wallet);
    saveString(walletKey, str);
  }

  Future<BitbananaWallet?> loadWallet() async {
    final str = await loadString(walletKey);
    if (str != null) {
      final json = jsonDecode(str);
      final wallet = BitbananaWallet.fromJson(json);
      return wallet;
    }
    return null;
  }
}
