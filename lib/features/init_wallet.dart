//
//
//

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/features/create_new_wallet.dart';
import 'package:mobile_app/features/storage.dart';
import 'package:mobile_app/state/wallet.dart';
import 'package:mobile_app/types/bitbanana_wallet.dart';

/// データを読み込んで Wallet を使用可能な状態にする
initWallet({required WidgetRef ref, required BitbananaWallet? myWallet}) {
  // Wallet を渡されな買った場合は 新規作成
  myWallet ??= createNewWallet();
  ref.read(wallet.notifier).update(myWallet); // メモリ上に保存
  Storage().saveWallet(myWallet); // ストレージに保存
}
