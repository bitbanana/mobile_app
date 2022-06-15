import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/features/storage.dart';
import 'package:mobile_app/state/wallet.dart';
import 'package:mobile_app/web_api/balance_inquiry.dart';

Future<void> fetchBalance(WidgetRef ref) async {
  final addr = ref.read(wallet)!.addr;
  final req = BalanceInquiryReq(addr: addr);
  final res = await req.send();
  final oldW = ref.read(wallet)!;
  final newW = oldW.copyWith(balance_memo: res.balance);
  ref.read(wallet.notifier).update(newW);
}
