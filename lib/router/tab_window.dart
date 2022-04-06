//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/router/page_content.dart';
import 'package:mobile_app/router/tab_state.dart';

class TabWindow extends HookConsumerWidget {
  final TabState state;
  const TabWindow(this.state);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: PageContent(id: state.selectedId),
    );
  }
}
