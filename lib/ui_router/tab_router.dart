//
//
//

import 'package:flutter/material.dart';
import 'package:mobile_app/ui_router/provider.dart';
import 'package:mobile_app/router/router.dart';

class _State<T> {
  final T tabPageId;

  const _State({
    required this.tabPageId,
  });
}

class TabPage<T> {
  final T id;
  final Widget tabIcon;
  final String tabLabel;
  final Widget Function() build;
  const TabPage({
    required this.id,
    required this.tabIcon,
    required this.tabLabel,
    required this.build,
  });
}

class TabRouter<T> extends ChangeNotifier {
  _State<T> _state;
  final List<TabPage<T>> tabPages;
  Widget? cacheWidget;

  TabRouter({
    required T initialTabPageId,
    required this.tabPages,
  }) : _state = _State(tabPageId: initialTabPageId);

  Widget widget() {
    cacheWidget ??= _RouterWidget<T>(this);
    return cacheWidget!;
  }

  T tabPageId() {
    return _state.tabPageId;
  }

  select(T tabPageId) {
    _state = _State(tabPageId: tabPageId);
    notifyListeners();
  }
}

class _RouterWidget<T> extends StatelessWidget {
  final TabRouter<T> _router;
  // ignore: use_key_in_widget_constructors
  const _RouterWidget(this._router);

  Widget buildPage(TabRouter<T> r, T tabPageId) {
    final page = r.tabPages.cast<TabPage<T>?>().firstWhere(
          (p) => p?.id == tabPageId,
          orElse: () => null,
        );
    if (page != null) {
      return page.build();
    } else {
      throw Exception('$tabPageId に対応するタブをルーターに登録してください');
    }
  }

  /// タブをタップされたとき
  void _onItemTapped(TabRouter r, int index) {
    final tabPage = r.tabPages[index];
    tabRouter.select(tabPage.id);
  }

  @override
  Widget build(BuildContext context) {
    final consumer = Consumer<TabRouter<T>>(
      builder: (context, r, child) {
        /// 画面下のバー
        var naviBar = BottomNavigationBar(
          items: [
            for (var page in r.tabPages)
              BottomNavigationBarItem(icon: page.tabIcon, label: page.tabLabel),
          ],
          currentIndex: r.tabPages.indexWhere((p) => p.id == r.tabPageId()),
          fixedColor: Colors.blueAccent,
          onTap: (i) => _onItemTapped(r, i),
          type: BottomNavigationBarType.fixed,
        );

        /// 画面
        return Scaffold(
          body: buildPage(r, r.tabPageId()),
          bottomNavigationBar: naviBar,
        );
      },
    );

    return ChangeNotifierProvider(
      create: (context) {
        return _router;
      },
      child: consumer,
    );
  }
}
