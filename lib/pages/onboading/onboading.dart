import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile_app/components/blue_app_bar.dart';
import 'package:mobile_app/pages/onboading/about_bnn_key.dart';
import 'package:mobile_app/pages/onboading/receive_start_bouns.dart';
import 'package:mobile_app/pages/onboading/welcome.dart';
import 'package:mobile_app/router/router.dart';
import 'package:ui_router/ui_router.dart';

/// アプリ
class Onboarding extends HookConsumerWidget {
  Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 画面
    return Scaffold(
      appBar: BlueAppBar(title: 'Onboarding'),
      backgroundColor: Colors.grey[200],
      body: onboardingRouter.widget(),
    );
  }
}
