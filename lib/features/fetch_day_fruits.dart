import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/state/day_fruits.dart';
import 'package:mobile_app/web_api/see_fruits.dart';

fetchDayFruits(WidgetRef ref) async {
  final req = SeeFruitsReq();
  final res = await req.send();
  final fruits = res.fruits;
  ref.read(dayFruits.notifier).update(fruits);
}
