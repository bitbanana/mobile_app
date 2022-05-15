import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/components/blue_gradient.dart';
import 'package:mobile_app/components/digital_counter.dart';
import 'package:mobile_app/types/bitbanana_wallet.dart';
import 'package:intl/intl.dart';

Size walletCardSize({required double screenW}) {
  double w = 0;
  if (screenW > 485.4 + 40) {
    w = 485.4;
  } else {
    w = screenW - 40;
  }
  double h = w / 1.618;
  return Size(w, h);
}

class WalletCard extends HookConsumerWidget {
  final BitbananaWallet wallet;
  final double width;
  final double height;
  // ignore: use_key_in_widget_constructors
  const WalletCard({
    required this.wallet,
    required this.width,
    required this.height,
  });

  String fmtDate(String createdAt) {
    final dateTime = DateTime.parse(createdAt).toLocal();
    DateFormat outputFormat = DateFormat('yyyy-MM-dd');
    String fmt = outputFormat.format(dateTime);
    return fmt;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          width: width,
          height: height * 0.75,
          color: Colors.yellow[600],
          child: Column(
            children: [
              Center(
                child: DigitalCounter(wallet.balance_memo),
              ),
              Text(fmtDate(wallet.created_at)),
            ],
          ),
        ),
        SizedBox(
          width: width,
          height: height * 0.25,
          child: BlueGradient(
            child: Row(
              children: [
                Text(wallet.nickname),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
