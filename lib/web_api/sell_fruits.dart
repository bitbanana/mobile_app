import 'package:mobile_app/types/sell_order.dart';

class SellFruitsReq {
  SellOrder order;
  SellFruitsReq({required this.order});
  SellFruitsRes send() {
    return SellFruitsRes();
  }
}

class SellFruitsRes {
  SellFruitsRes();
}
