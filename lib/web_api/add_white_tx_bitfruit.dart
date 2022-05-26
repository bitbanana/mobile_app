import 'package:mobile_app/config/url.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile_app/types/tx.dart';

class AddWhiteTxBitFruitReq {
  Tx tx;
  AddWhiteTxBitFruitReq({required this.tx});
  Future<AddWhiteTxBitFruitRes> send() async {
    var urlString = bitbananaUrl + '/add-white-tx-bitfruit';
    var url = Uri.parse(urlString);
    final encoding = Encoding.getByName('utf-8');

    print("支払いリクエストを確認します");
    final response = await http.post(
      url,
      body: jsonEncode(tx),
      headers: {
        "Content-Type": "application/json",
      },
      encoding: encoding,
    );

    print("支払いレスポンスを確認します");
    if (response.statusCode == 200) {
      // utf8で受け取る
      final rawString = utf8.decode(response.bodyBytes);
      dynamic rawJson = jsonDecode(rawString);
      print(rawJson);
      return AddWhiteTxBitFruitRes();
    } else {
      throw ("error");
    }
  }
}

class AddWhiteTxBitFruitRes {
  AddWhiteTxBitFruitRes();
}
