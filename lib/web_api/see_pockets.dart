import 'package:mobile_app/types/fruit_pocket.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SeePocketsReq {
  String addr;
  SeePocketsReq({required this.addr});
  Future<SeePocketsRes> send() async {
    var urlString = 'http://localhost:8000/see-pockets';
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
      List<dynamic> list = rawJson['pockets'];

      List<FruitPocket> pockets = list.map((e) {
        // 1度エンコードしてからMapへデコード
        final j = json.encode(e);
        Map<String, dynamic> map = json.decode(j);
        return FruitPocket.fromJson(map);
      }).toList();
      return SeePocketsRes(
        pockets: pockets,
      );
    } else {
      throw ("error");
    }
  }
}

class SeePocketsRes {
  List<FruitPocket> pockets;
  SeePocketsRes({required this.pockets});
}
