import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/features/storage.dart';
import 'package:mobile_app/state/bnn_card.dart';
import 'package:mobile_app/web_api/balance_inquiry.dart';

Future<void> fetchBalance(WidgetRef ref) async {
  final addr = ref.read(bnnCard)!.addr;
  final req = BalanceInquiryReq(addr: addr);
  final res = await req.send();
  final oldW = ref.read(bnnCard)!;
  final newW = oldW.copyWith(balance_memo: res.balance);
  ref.read(bnnCard.notifier).update(newW);
}
