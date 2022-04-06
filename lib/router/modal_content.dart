//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/router/modal_id.dart';

class ModalContent extends HookConsumerWidget {
  final ModalId id;
  const ModalContent({
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (id) {
      default:
        return Text('モーダル');
    }
  }
}
