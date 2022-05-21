//
//
//

// Flutter
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// Page
import 'package:mobile_app/pages/buy/buy.dart';
import 'package:mobile_app/pages/buy_guide/buy_guide.dart';
import 'package:mobile_app/pages/create_wallet/create_wallet.dart';
import 'package:mobile_app/pages/history/history.dart';
import 'package:mobile_app/pages/home/home.dart';
import 'package:mobile_app/pages/item_detail/item_detail.dart';
import 'package:mobile_app/pages/sell/sell.dart';
import 'package:mobile_app/pages/sell_guide.dart/sell_guide.dart';
import 'package:mobile_app/pages/splash/splash.dart';
import 'package:mobile_app/pages/top/top.dart';
import 'package:mobile_app/pages/trade_confirm/trade_confirm.dart';
import 'package:mobile_app/pages/trade_result/trade_result.dart';
// Page Router
import 'package:ui_router/ui_router.dart';
// config
import 'package:mobile_app/config/param_keys.dart';

enum PageId {
  splash,
  createWallet,
  top,
  home,
  sell,
  buy,
  history,
  sellGuide,
  tradeConfirm,
  buyGuide,
  tradeResult,
  itemDetail,
}

final router = UiRouter(
  initialPageId: PageId.splash,
  pages: [
    UiPage(
      id: PageId.splash,
      build: (params) => const Splash(),
    ),
    UiPage(
      id: PageId.top,
      build: (params) => const Top(),
    ),
    UiPage(
      id: PageId.createWallet,
      build: (params) => const CreateWallet(),
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
      build: (params) => const Home(),
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
      id: PageId.itemDetail,
      build: (params) => const ItemDetail(),
    ),
  ],
);

enum TabPageId {
  home,
  sell,
  buy,
  history,
}

final tabRouter = TabRouter(
  initialTabPageId: TabPageId.home,
  tabPages: [
    TabPage(
      id: TabPageId.home,
      tabIcon: const Icon(Icons.home),
      tabLabel: 'Home',
      build: () => const Home(),
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
