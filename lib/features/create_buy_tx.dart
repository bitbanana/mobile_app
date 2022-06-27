import 'dart:convert';
import 'package:mobile_app/types/bitbanana_key.dart';
import 'package:mobile_app/types/sender_sig_content.dart';
import 'package:mobile_app/types/tx.dart';
import 'package:mobile_app/utils/signing.dart';
import 'package:uuid/uuid.dart';

Tx createBuyTx(BitbananaKey w, int amount) {
  final uuid = const Uuid().v4();
  final cont = SenderSigContent(
    tx_id: uuid,
    r_addr: "@bitfruitex",
    amount: amount,
    fee: 0,
  );
  final sig = sign(sigContent: jsonEncode(cont), jwk: w.jwk);
  final tx = Tx(
    s_addr: w.addr,
    s_sig_cont: cont,
    s_sig: sig,
  );
  return tx;
}
