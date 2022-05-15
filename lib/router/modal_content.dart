//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/router/modal_id.dart';

class ModalContent extends HookConsumerWidget {
  final ModalId id;
  const ModalContent({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (id) {
      default:
        return Text('モーダル');
    }
  }
}
