import 'dart:convert';

import 'package:mobile_app/types/bitbanana_wallet.dart';
import 'package:mobile_app/utils/key_value_storage.dart';

class Storage {
  saveWallet(BitbananaWallet wallet) {
    final str = jsonEncode(wallet);
    saveString('WALLET', str);
  }

  Future<BitbananaWallet?> loadWallet() async {
    final str = await loadString('WALLET');
    if (str != null) {
      final json = jsonDecode(str);
      final wallet = BitbananaWallet.fromJson(json);
      return wallet;
    }
    return null;
  }
}
