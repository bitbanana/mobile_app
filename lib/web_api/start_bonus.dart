import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile_app/config/url.dart';

class StartBonusReq {
  String addr;
  StartBonusReq({required this.addr});
  Future<StartBonusRes> send() async {
    var urlString = bitbananaUrl + '/start-bonus';
    var url = Uri.parse(urlString);
    final encoding = Encoding.getByName('utf-8');
    final body = jsonEncode({"addr": addr});
    final response = await http.post(
      url,
      body: body,
      headers: {
        "Content-Type": "application/json",
      },
      encoding: encoding,
    );
    if (response.statusCode == 200) {
      // utf8で受け取る
      final rawString = utf8.decode(response.bodyBytes);
      dynamic rawJson = jsonDecode(rawString);
      return StartBonusRes(
        new_balance: rawJson["new_balance"],
      );
    } else {
      throw ("error");
    }
  }
}

class StartBonusRes {
  final int new_balance;
  StartBonusRes({required this.new_balance});
}
