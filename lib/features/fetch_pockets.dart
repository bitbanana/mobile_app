import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/state/fruit_pockets.dart';
import 'package:mobile_app/state/bnn_card.dart';
import 'package:mobile_app/web_api/see_pockets.dart';

fetchPockets(WidgetRef ref) async {
  final addr = ref.read(bnnCard)!.addr;
  final req = SeePocketsReq(addr: addr);
  final res = await req.send();
  final pockets = res.pockets;
  ref.read(fruitPockets.notifier).update(pockets);
}
