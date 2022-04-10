//
// 自作のルーターライブラリ
// パッケージ依存を減らすために作成
//

import 'package:flutter/material.dart';
import 'package:mobile_app/ui_router/provider.dart';
export 'package:mobile_app/ui_router/tab_router.dart';

class _Element<PageId> {
  final PageId pageId;
  final Map<String, String> params;
  _Element({
    required this.pageId,
    required this.params,
  });
}

class _State<PageId> {
  final List<_Element<PageId>> stack;

  const _State({
    required this.stack,
  });
}

class UiPage<PageId> {
  final PageId id;
  final Widget Function(Map<String, String> params) build;
  const UiPage({
    required this.id,
    required this.build,
  });
}

class _RouterWidget<PageId> extends StatelessWidget {
  final UiRouter<PageId> _router;
  // ignore: use_key_in_widget_constructors
  const _RouterWidget(this._router);

  Widget buildPage(UiRouter<PageId> r, _Element ele) {
    final page = r.pages.cast<UiPage<PageId>?>().firstWhere(
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
    final consumer = Consumer<UiRouter<PageId>>(
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

class UiRouter<PageId> extends ChangeNotifier {
  final List<UiPage<PageId>> pages;
  _State<PageId> _state;
  Widget? cacheWidget;

  UiRouter({
    required PageId initialPageId,
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
    cacheWidget ??= _RouterWidget<PageId>(this);
    return cacheWidget!;
  }

  push(
    PageId pageId, {
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

  List<_Element<PageId>> stack() {
    return _state.stack;
  }
}
