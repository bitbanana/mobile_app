import 'package:flutter/material.dart';
import 'package:mobile_app/router/router.dart';

/// アプリ
class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 選択中のタブ
    return tabRouter.widget();
  }
}
