import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/features/storage.dart';
import 'package:mobile_app/state/wallet.dart';
import 'package:mobile_app/utils/signing.dart';
import 'package:mobile_app/web_api/balance_inquiry.dart';

fetchBalance(WidgetRef ref) {
  final addr = ref.read(wallet)!.addr;
  final req = BalanceInquiryReq(addr: addr);
  final res = req.send();
  final oldW = ref.read(wallet)!;
  final newW = oldW.copyWith(balance_memo: res.balance);
  // DBへ保存
  Storage().saveWallet(newW);
  ref.read(wallet.notifier).update(newW);
}
