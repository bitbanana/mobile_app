//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/state/wallet.dart';

class NicknameEditor {
  final nicknameController = TextEditingController();

  Widget _nicknameEditCancelButton(BuildContext dialogContext) {
    final button = TextButton(
      child: const Text('キャンセル'),
      onPressed: () {
        Navigator.pop(dialogContext);
      },
    );
    return button;
  }

  Widget _nicknameEditOkButton(BuildContext dialogContext, WidgetRef ref) {
    final button = TextButton(
      child: const Text('OK'),
      onPressed: () {
        final newName = nicknameController.text;
        final oldWallet = ref.read(wallet);
        final newWallet = oldWallet!.copyWith(nickname: newName);
        ref.read(wallet.notifier).update(newWallet);
        Navigator.pop(dialogContext);
      },
    );
    return button;
  }

  editNickname(BuildContext context, WidgetRef ref) {
    // title
    const title = Text('名前を変更');
    final myWallet = ref.read(wallet);
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: title,
          content: TextField(
            controller: nicknameController,
            decoration: InputDecoration(hintText: myWallet!.nickname),
          ),
          actions: <Widget>[
            _nicknameEditCancelButton(dialogContext),
            _nicknameEditOkButton(dialogContext, ref),
          ],
        );
      },
    );
  }
}
