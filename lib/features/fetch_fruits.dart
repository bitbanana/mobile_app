import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/state/bitfruits.dart';
import 'package:mobile_app/web_api/see_fruits.dart';

fetchFruits(WidgetRef ref) async {
  final req = SeeFruitsReq();
  final res = await req.send();
  final fruits = res.fruits;
  ref.read(bitfruits.notifier).update(fruits);
}
