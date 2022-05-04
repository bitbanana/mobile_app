import 'package:mobile_app/config/url.dart';
import 'package:mobile_app/types/bill.dart';
import 'package:mobile_app/types/buy_order.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class BuyFruitsReq {
  BuyOrder order;
  BuyFruitsReq({required this.order});
  Future<BuyFruitsRes> send() async {
    var urlString = bitbananaBaseUrl + 'buy-fruits';
    var url = Uri.parse(urlString);
    final encoding = Encoding.getByName('utf-8');
    final response = await http.post(
      url,
      body: jsonEncode(order),
      headers: {
        "Content-Type": "application/json",
      },
      encoding: encoding,
    );
    if (response.statusCode == 200) {
      // utf8で受け取る
      final rawString = utf8.decode(response.bodyBytes);
      dynamic rawJson = jsonDecode(rawString);
      dynamic billJson = rawJson['bill'];
      final bill = Bill.fromJson(billJson);
      return BuyFruitsRes(
        bill: bill,
      );
    } else {
      throw ("error");
    }
  }
}

class BuyFruitsRes {
  Bill bill;
  BuyFruitsRes({required this.bill});
}
