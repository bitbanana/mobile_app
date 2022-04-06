import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/pages/buy/buy.dart';
import 'package:mobile_app/pages/history/history.dart';
import 'package:mobile_app/pages/home/home.dart';
import 'package:mobile_app/pages/sell/sell.dart';

/// 選択中のタブ
final tabIndex = StateNotifierProvider<Notifier, int>((_) {
  return Notifier();
});

/// タブ変更する人
class Notifier extends StateNotifier<int> {
  Notifier() : super(0);
  void selectTab(int index) {
    state = index;
  }
}

/// アプリ
class Top extends HookConsumerWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 選択中のタブ
    final tab = ref.watch(tabIndex);

    /// 画面下のバー
    var naviBar = BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.photo_album), label: 'Sell'),
        BottomNavigationBarItem(icon: Icon(Icons.photo_album), label: 'Buy'),
        BottomNavigationBarItem(
            icon: Icon(Icons.photo_album), label: 'History'),
      ],
      currentIndex: tab,
      fixedColor: Colors.blueAccent,
      onTap: (index) => _onItemTapped(index, ref),
      type: BottomNavigationBarType.fixed,
    );

    /// 画面
    return Scaffold(
      body: tabContent(tab),
      bottomNavigationBar: naviBar,
    );
  }

  /// タブをタップされたとき
  void _onItemTapped(int index, WidgetRef ref) {
    ref.read(tabIndex.notifier).selectTab(index);
  }

  /// 画面のコンテンツ
  Widget tabContent(int index) {
    switch (index) {
      case 0:
        return Home();
      case 1:
        return Sell();
      case 2:
        return Buy();
      case 3:
        return History();
      default:
        throw Exception('存在しないタブが選択されました');
    }
  }
}
