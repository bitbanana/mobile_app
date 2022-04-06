//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/router/tab_config.dart';
import 'package:mobile_app/router/tab_state.dart';

class TabBar extends HookConsumerWidget {
  final TabState state;
  final TabConfig config;

  const TabBar({
    required this.state,
    required this.config,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Text('ここに下バーが入ります'),
    );
  }
}
