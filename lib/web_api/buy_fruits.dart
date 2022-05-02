import 'package:mobile_app/types/bill.dart';
import 'package:mobile_app/types/buy_order.dart';
import 'package:uuid/uuid.dart';

class BuyFruitsReq {
  BuyOrder order;
  BuyFruitsReq({required this.order});
  BuyFruitsRes send() {
    final uuid = const Uuid().v4();
    return BuyFruitsRes(
      bill: Bill(
        id: uuid,
        tx_id: uuid,
        s_addr: 'Dammy',
        r_addr: 'Dammy',
        created_at: '2022-01-01T12:12:12.000Z',
        amount: 777,
        buy_order: order,
      ),
    );
  }
}

class BuyFruitsRes {
  Bill bill;
  BuyFruitsRes({required this.bill});
}
