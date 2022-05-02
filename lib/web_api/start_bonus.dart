class StartBonusReq {
  String addr;
  String pub_jwk;
  StartBonusReq({required this.addr, required this.pub_jwk});
  StartBonusRes send() {
    return StartBonusRes(new_balance: 7777);
  }
}

class StartBonusRes {
  int new_balance;
  StartBonusRes({required this.new_balance});
}
