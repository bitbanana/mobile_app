import 'package:mobile_app/config/url.dart';
import 'package:mobile_app/types/bitfruit.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SeeFruitsReq {
  SeeFruitsReq();
  Future<SeeFruitsRes> send() async {
    var urlString = bitbananaUrl + '/see-fruits';
    var url = Uri.parse(urlString);
    final encoding = Encoding.getByName('utf-8');
    final response = await http.post(
      url,
      body: null,
      headers: {
        "Content-Type": "application/json",
      },
      encoding: encoding,
    );
    if (response.statusCode == 200) {
      // utf8で受け取る
      final rawString = utf8.decode(response.bodyBytes);
      dynamic rawJson = jsonDecode(rawString);
      List<dynamic> list = rawJson['fruits'];

      List<Bitfruit> fruits = list.map((e) {
        // 1度エンコードしてからMapへデコード
        final j = json.encode(e);
        Map<String, dynamic> map = json.decode(j);
        return Bitfruit.fromJson(map);
      }).toList();
      return SeeFruitsRes(
        fruits: fruits,
      );
    } else {
      throw ("error");
    }
  }
}

class SeeFruitsRes {
  List<Bitfruit> fruits;
  SeeFruitsRes({required this.fruits});
}
