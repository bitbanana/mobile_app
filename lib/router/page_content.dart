//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/pages/buy/buy.dart';
import 'package:mobile_app/pages/buy_guide/buy_guide.dart';
import 'package:mobile_app/pages/history/history.dart';
import 'package:mobile_app/pages/home/home.dart';
import 'package:mobile_app/pages/item_detail/item_detail.dart';
import 'package:mobile_app/pages/sell/sell.dart';
import 'package:mobile_app/pages/sell_guide.dart/sell_guide.dart';
import 'package:mobile_app/pages/splash/splash.dart';
import 'package:mobile_app/pages/top/top.dart';
import 'package:mobile_app/pages/trade_confirm/trade_confirm.dart';
import 'package:mobile_app/pages/trade_result/trade_result.dart';
import 'package:mobile_app/router/page_id.dart';

class PageContent extends HookConsumerWidget {
  final PageId id;
  // ignore: use_key_in_widget_constructors
  const PageContent({
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (id) {
      case PageId.top:
        return const Top();
      case PageId.sellGuide:
        return const SellGuide();
      case PageId.sell:
        return const Sell();
      case PageId.buyGuide:
        return const BuyGuide();
      case PageId.history:
        return const History();
      case PageId.home:
        return const Home();
      case PageId.tradeConfirm:
        return const TradeConfirm();
      case PageId.tradeResult:
        return const TradeResult();
      case PageId.splash:
        return const Splash();
      case PageId.buy:
        return const Buy();
      case PageId.itemDetail:
        return const ItemDetail();
    }
  }
}
