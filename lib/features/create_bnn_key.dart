import 'package:mobile_app/types/bitbanana_key.dart';
import 'package:mobile_app/utils/signing.dart' as util;

BitbananaKey createBnnKey() {
  final jwk = util.newJwk();
  final pubJwk = util.pubJwk(jwk: jwk);
  final addr = util.addr(pubJwk: pubJwk);
  final now = DateTime.now().toUtc().toIso8601String();
  final newCard = BitbananaKey(
    addr: addr,
    jwk: jwk,
    balance_memo: 500,
    nickname: '@bitbanana',
    created_at: now,
    version: '0.0.1',
  );
  return newCard;
}
