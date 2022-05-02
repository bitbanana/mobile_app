import 'dart:convert';
import 'package:mobile_app/types/bitbanana_wallet.dart';
import 'package:mobile_app/types/sender_sig_content.dart';
import 'package:mobile_app/types/tx.dart';
import 'package:mobile_app/types/tx_page.dart';
import 'package:mobile_app/utils/signing.dart';
import 'package:uuid/uuid.dart';

Tx createBuyTx(BitbananaWallet w, int amount) {
  final uuid = const Uuid().v4();
  final cont = SenderSigContent(
    addr: w.addr,
    tx_id: uuid,
    tx_page: 1,
    tx_all_pages: 1,
    r_addr: "BitFruit.V1.Free.Addr",
    amount: amount,
    fee: 0,
  );
  final sig = sign(sigContent: jsonEncode(cont), jwk: w.jwk);
  final txPage = TxPage(cont: cont, s_sig: sig);
  final tx = Tx(s_addr: w.addr, pages: [txPage]);
  return tx;
}
