import 'package:mobile_app/types/day_fruit.dart';
import 'package:mobile_app/types/fruit_pocket.dart';

class SeePocketsReq {
  String addr;
  SeePocketsReq({required this.addr});
  SeePocketsRes send() {
    return SeePocketsRes(
      pockets: [
        const FruitPocket(
          owner_addr: 'Dammy',
          fruit_id: 0,
          count: 7,
        ),
      ],
    );
  }
}

class SeePocketsRes {
  List<FruitPocket> pockets;
  SeePocketsRes({required this.pockets});
}
