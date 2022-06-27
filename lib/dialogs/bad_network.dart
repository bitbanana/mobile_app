import 'package:flutter/material.dart';
import 'package:mobile_app/router/router.dart';
import 'package:ui_router/ui_router.dart';

class BadNetwork extends StatelessWidget {
  final UiDialogCompleter completer;
  const BadNetwork(this.completer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: ElevatedButton(
        child: Text('Close'),
        onPressed: () {
          completer.ok();
        },
      ),
      width: 300,
      height: 200,
    );
  }
}
