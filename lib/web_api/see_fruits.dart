import 'package:mobile_app/types/day_fruit.dart';

class SeeFruitsReq {
  SeeFruitsReq();
  SeeFruitsRes send() {
    return SeeFruitsRes(fruits: [
      const DayFruit(
        fruit_id: 0,
        yyyymmdd: '77777777',
        buy_count: 77,
        sell_count: 77,
        price_ytd: 120,
        price: 130,
      ),
    ]);
  }
}

class SeeFruitsRes {
  List<DayFruit> fruits;
  SeeFruitsRes({required this.fruits});
}
