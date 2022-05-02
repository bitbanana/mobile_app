import 'package:mobile_app/types/bill.dart';
import 'package:mobile_app/types/buy_order.dart';
import 'package:uuid/uuid.dart';

class BalanceInquiryReq {
  String addr;
  BalanceInquiryReq({required this.addr});
  BalanceInquiryRes send() {
    return BalanceInquiryRes(
      balance: 7777,
    );
  }
}

class BalanceInquiryRes {
  int balance;
  BalanceInquiryRes({required this.balance});
}
