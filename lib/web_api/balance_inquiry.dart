import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile_app/config/url.dart';

class BalanceInquiryReq {
  String addr;
  BalanceInquiryReq({required this.addr});
  Future<BalanceInquiryRes> send() async {
    var urlString = bitbananaUrl + '/balance-inquiry';
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
      return BalanceInquiryRes(
        balance: rawJson["balance"],
      );
    } else {
      throw ("error");
    }
  }
}

class BalanceInquiryRes {
  int balance;
  BalanceInquiryRes({required this.balance});
}
