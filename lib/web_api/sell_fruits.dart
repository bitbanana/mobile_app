import 'package:mobile_app/config/url.dart';
import 'package:mobile_app/types/sell_order.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SellFruitsReq {
  SellOrder order;
  SellFruitsReq({required this.order});
  Future<SellFruitsRes> send() async {
    var urlString = bitbananaBaseUrl + '/sell-fruits';
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
      return SellFruitsRes();
    } else {
      throw ("error");
    }
  }
}

class SellFruitsRes {
  SellFruitsRes();
}
