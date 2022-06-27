import 'dart:convert';

import 'package:mobile_app/types/bitbanana_key.dart';
import 'package:mobile_app/utils/key_value_storage.dart';

const bitbananaKey = 'BITBANANA_KEY';

class Storage {
  saveBnnKey(BitbananaKey bnnKey) {
    final str = jsonEncode(bnnKey);
    saveString(bitbananaKey, str);
  }

  Future<BitbananaKey?> loadBnnKey() async {
    final str = await loadString(bitbananaKey);
    if (str != null) {
      final json = jsonDecode(str);
      final bnnKey = BitbananaKey.fromJson(json);
      return bnnKey;
    }
    return null;
  }

  Future<void> deleteBnnKey() async {
    await removeString(bitbananaKey);
  }
}
