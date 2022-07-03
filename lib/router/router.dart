//
//
//

// Flutter
import 'package:flutter/material.dart';
import 'package:mobile_app/dialogs/bad_network.dart';
// Page
import 'package:mobile_app/pages/buy/buy.dart';
import 'package:mobile_app/pages/buy_guide/buy_guide.dart';
import 'package:mobile_app/pages/create_bnn_key/create_bnn_key.dart';
import 'package:mobile_app/pages/fruit_detail/fruit_detail.dart';
import 'package:mobile_app/pages/history/history.dart';
import 'package:mobile_app/pages/home/home.dart';
import 'package:mobile_app/pages/onboading/about_bnn_key.dart';
import 'package:mobile_app/pages/onboading/onboading.dart';
import 'package:mobile_app/pages/onboading/welcome.dart';
import 'package:mobile_app/pages/sell/sell.dart';
import 'package:mobile_app/pages/sell_guide.dart/sell_guide.dart';
import 'package:mobile_app/pages/splash/splash.dart';
import 'package:mobile_app/pages/home_screen/home_screen.dart';
import 'package:mobile_app/pages/trade_confirm/trade_confirm.dart';
import 'package:mobile_app/pages/trade_result/trade_result.dart';
import 'package:mobile_app/pages/onboading/receive_start_bouns.dart';
// Page Router
import 'package:ui_router/ui_router.dart';
// config
import 'package:mobile_app/config/param_keys.dart';

enum PageId {
  splash,
  onboarding,
  createBnnKey,
  top,
  home,
  sell,
  buy,
  history,
  sellGuide,
  tradeConfirm,
  buyGuide,
  tradeResult,
  fruitDetail,
}

final router = UiRouter(
  initialPageId: PageId.splash,
  pages: [
    UiPage(
      id: PageId.splash,
      build: (params) => const Splash(),
    ),
    UiPage(
      id: PageId.onboarding,
      build: (params) => Onboarding(),
    ),
    UiPage(
      id: PageId.top,
      build: (params) => const HomeScreen(),
    ),
    UiPage(
      id: PageId.createBnnKey,
      build: (params) => const CreateBnnKey(),
    ),
    UiPage(
      id: PageId.sellGuide,
      build: (params) => SellGuide(fruitId: params[FRUIT_ID]),
    ),
    UiPage(
      id: PageId.sell,
      build: (params) => const Sell(),
    ),
    UiPage(
      id: PageId.buy,
      build: (params) => const Buy(),
    ),
    UiPage(
      id: PageId.buyGuide,
      build: (params) => BuyGuide(fruitId: params[FRUIT_ID]),
    ),
    UiPage(
      id: PageId.history,
      build: (params) => const History(),
    ),
    UiPage(
      id: PageId.home,
      build: (params) => Home(),
    ),
    UiPage(
      id: PageId.tradeConfirm,
      build: (params) => const TradeConfirm(),
    ),
    UiPage(
      id: PageId.tradeResult,
      build: (params) => const TradeResult(),
    ),
    UiPage(
      id: PageId.fruitDetail,
      build: (params) => const FruitDetail(),
    ),
  ],
  dialogs: [
    UiDialog(
      id: 'Bad',
      build: (params, completer) => BadNetwork(completer),
    ),
  ],
);

enum OnboardingPageId {
  welcome,
  aboutBnnKey,
  receiveStartBonus,
}

final onboardingRouter = UiRouter(
  initialPageId: OnboardingPageId.welcome,
  pages: [
    UiPage(
      id: OnboardingPageId.receiveStartBonus,
      build: (params) => const ReceiveStartBonus(),
    ),
    UiPage(
      id: OnboardingPageId.welcome,
      build: (params) => const Welcome(),
    ),
    UiPage(
      id: OnboardingPageId.aboutBnnKey,
      build: (params) => const AboutBnnKey(),
    ),
  ],
);

enum TabPageId {
  home,
  sell,
  buy,
  history,
}

TabRouter? tabRouter;

initTabRouter() {
  tabRouter = TabRouter(
    initialTabPageId: TabPageId.home,
    tabPages: [
      TabPage(
        id: TabPageId.home,
        tabIcon: const Icon(Icons.home),
        tabLabel: 'Home',
        build: () => Home(),
      ),
      TabPage(
        id: TabPageId.sell,
        tabIcon: const Icon(Icons.arrow_upward_outlined),
        tabLabel: 'Sell',
        build: () => const Sell(),
      ),
      TabPage(
        id: TabPageId.buy,
        tabIcon: const Icon(Icons.arrow_downward_outlined),
        tabLabel: 'Buy',
        build: () => const Buy(),
      ),
      TabPage(
        id: TabPageId.history,
        tabIcon: const Icon(Icons.history),
        tabLabel: 'History',
        build: () => const History(),
      ),
    ],
  );
}
