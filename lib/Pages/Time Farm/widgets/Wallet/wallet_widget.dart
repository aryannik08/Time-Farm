import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Pages/Time%20Farm/models/Wallet/wallet_model.dart';

class WalletWidget extends StatelessWidget {
  final WalletModel walletModel;
  const WalletWidget({super.key, required this.walletModel});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            AspectRatio(aspectRatio: 1/1,child: Card(),),
            AspectRatio(aspectRatio: 16/9,child: Card(),),
          ],
        )
      ],
    );
  }
}