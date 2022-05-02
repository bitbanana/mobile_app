import 'package:mobile_app/features/create_new_wallet.dart';
import 'package:mobile_app/features/log_format.dart';

main() {
  final w = createNewWallet();
  final s = fmtWallet(w);
  print(s);
}
