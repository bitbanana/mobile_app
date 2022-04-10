//
// 自作のルーターライブラリ
// パッケージ依存を減らすために作成
//

import 'package:flutter/material.dart';
import 'package:mobile_app/ui_router/provider.dart';

export 'package:mobile_app/ui_router/tab_router.dart';

// T = Type of Page ID

class _State<T> {
  final List<_Element<T>> stack;

  const _State({
    required this.stack,
  });
}

class UiPage<T> {
  final T id;
  final Widget Function(Map<String, String> params) build;
  const UiPage({
    required this.id,
    required this.build,
  });
}

class _Element<T> {
  final T pageId;
  final Map<String, String> params;
  _Element({
    required this.pageId,
    required this.params,
  });
}

class _RouterWidget<T> extends StatelessWidget {
  final UiRouter<T> _router;
  // ignore: use_key_in_widget_constructors
  const _RouterWidget(this._router);

  Widget buildPage(UiRouter<T> r, _Element ele) {
    final page = r.pages.cast<UiPage<T>?>().firstWhere(
          (p) => p?.id == ele.pageId,
          orElse: () => null,
        );
    if (page != null) {
      return page.build(ele.params);
    } else {
      throw Exception('${ele.pageId} に対応するページをルーターに登録してください');
    }
  }

  @override
  Widget build(BuildContext context) {
    final consumer = Consumer<UiRouter<T>>(
      builder: (context, r, child) {
        final navigator = Navigator(
          pages: [
            for (var ele in r.stack())
              MaterialPage(
                child: buildPage(r, ele),
              ),
          ],
          onPopPage: (route, result) {
            r.pop();
            return false; // フレームワークの pop は無効化
          },
        );

        final scaffold = Scaffold(body: navigator);
        return scaffold;
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

class UiRouter<T> extends ChangeNotifier {
  final List<UiPage<T>> pages;
  _State<T> _state;
  Widget? cacheWidget;

  UiRouter({
    required T initialPageId,
    required this.pages,
  }) : _state = _State(
          stack: [
            _Element(
              pageId: initialPageId,
              params: {},
            ),
          ],
        );

  Widget widget() {
    cacheWidget ??= _RouterWidget<T>(this);
    return cacheWidget!;
  }

  push(
    T pageId, {
    Map<String, String> params = const {},
  }) {
    final idParams = _Element(pageId: pageId, params: params);
    _state = _State(stack: [..._state.stack, idParams]);
    notifyListeners();
  }

  pop() {
    _state = _State(stack: _state.stack..removeLast());
    notifyListeners();
  }

  List<_Element<T>> stack() {
    return _state.stack;
  }
}
