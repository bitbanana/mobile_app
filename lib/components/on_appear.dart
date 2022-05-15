import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OnAppear extends HookConsumerWidget {
  final void Function() onAppear;
  final Widget? child;
  const OnAppear(this.onAppear, {Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          onAppear();
        });
        return null;
      },
      const [],
    );
    return child ??
        const SizedBox(
          width: 0,
          height: 0,
        );
  }
}
