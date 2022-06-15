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
    final ValueNotifier<OnboardingPageId?> nextPage = useState(null);
    final isFinished = useState(false);

    useEffect(() {
      debugPrint("init Onboarding");
      final welcomePage = UiPage(
        id: OnboardingPageId.welcome,
        build: (params) => Welcome(
          onReady: () {
            nextPage.value = OnboardingPageId.aboutBnnKey;
          },
        ),
      );
      final aboutBnnKeyPage = UiPage(
        id: OnboardingPageId.aboutBnnKey,
        build: (params) => AboutBnnKey(
          onReady: () {
            nextPage.value = OnboardingPageId.receiveStartBonus;
          },
        ),
      );
      final receiveStartBonusPage = UiPage(
        id: OnboardingPageId.receiveStartBonus,
        build: (params) => ReceiveStartBonus(
          onReady: () {
            isFinished.value = true;
          },
        ),
      );
      onboardingRouter.pages.add(welcomePage);
      onboardingRouter.pages.add(aboutBnnKeyPage);
      onboardingRouter.pages.add(receiveStartBonusPage);
    }, []);

    /// 次のオンボーデングページへ進むボタン
    final nextPageButton = FloatingActionButton.extended(
      onPressed: () {
        final _nextPage = nextPage.value;
        nextPage.value = null;
        onboardingRouter.push(_nextPage);
      },
      label: const Text('Next'),
      icon: const Icon(Icons.arrow_right),
      backgroundColor: Colors.green,
    );

    /// オンボーデング終了ボタン
    final finishButton = FloatingActionButton.extended(
      onPressed: () {
        router.push(PageId.top);
      },
      label: const Text("Let's Start"),
      icon: const Icon(Icons.arrow_right),
      backgroundColor: Colors.green,
    );

    /// 画面
    return Scaffold(
      appBar: BlueAppBar(title: 'Onboarding'),
      backgroundColor: Colors.grey[200],
      body: onboardingRouter.widget(),
      floatingActionButton: nextPage.value != null
          ? nextPageButton
          : (isFinished.value ? finishButton : null),
    );
  }
}
