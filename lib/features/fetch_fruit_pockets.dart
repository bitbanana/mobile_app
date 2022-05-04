import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/state/fruit_pockets.dart';
import 'package:mobile_app/state/wallet.dart';
import 'package:mobile_app/web_api/see_pockets.dart';

fetchFruitPockets(WidgetRef ref) async {
  final addr = ref.read(wallet)!.addr;
  final req = SeePocketsReq(addr: addr);
  final res = await req.send();
  final pockets = res.pockets;
  ref.read(fruitPockets.notifier).update(pockets);
}
