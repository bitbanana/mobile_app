import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/router/router.dart';

void main() {
  final widget = router.widget();
  final app = MaterialApp(home: widget);
  final scope = ProviderScope(child: app);
  runApp(scope);
}
