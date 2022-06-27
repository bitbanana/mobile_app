import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/state/bnn_card.dart';

class EditNicknameDialog extends HookConsumerWidget {
  final controller = TextEditingController();
  EditNicknameDialog({Key? key}) : super(key: key);

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
        final newName = controller.text;
        final oldCard = ref.read(bnnCard);
        final newCard = oldCard!.copyWith(nickname: newName);
        ref.read(bnnCard.notifier).update(newCard);
        Navigator.pop(dialogContext);
      },
    );
    return button;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _bnnCard = ref.watch(bnnCard);
    const title = Text('名前を変更');
    return AlertDialog(
      title: title,
      content: TextField(
        controller: controller,
        decoration: InputDecoration(hintText: _bnnCard!.nickname),
      ),
      actions: <Widget>[
        _nicknameEditCancelButton(context),
        _nicknameEditOkButton(context, ref),
      ],
    );
  }
}
