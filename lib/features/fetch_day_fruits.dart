import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/state/day_fruits.dart';
import 'package:mobile_app/web_api/see_fruits.dart';

fetchDayFruits(WidgetRef ref) {
  final req = SeeFruitsReq();
  final res = req.send();
  final fruits = res.fruits;
  ref.read(dayFruits.notifier).update(fruits);
}
