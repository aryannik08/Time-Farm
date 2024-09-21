import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:spotify/generated/assets.dart';


import '../../models/Wallet/wallet_model.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F2F5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: Get.height / 30),
            child: Center(
              child: Container(
                width: 99,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffFEFEFE),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffEDEBFF),
                      blurRadius: 50,
                      spreadRadius: 5,
                      offset: Offset(-50, 0),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: DottedBorder(
                      color: const Color(0xfff1f1f1),
                      strokeWidth: 2,
                      dashPattern: const [6, 5],
                      child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            Assets.assetsWalletCoinPicture,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Wallet",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
            ),
          )),
          Center(
            child: SizedBox(
                width: Get.width / 1.4,
                child: const Center(
                  child: Text(
                    "Connect your TON wallet for future rewards",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 20),
            child: Center(
              child: SizedBox(
                height: 75,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Positioned(
                      right: 50,
                      left: 50,
                      child: Text(
                        "TON wallet",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MainBoxes(
                          width: 50,
                          height: 50,
                          isLeftOne: true,
                          walletModel: walletList[0],
                        ),
                        MainBoxes(
                            width: double.infinity,
                            height: 50,
                            isLeftOne: false,
                            walletModel: walletList[0]),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainBoxes extends StatelessWidget {
  final WalletModel walletModel;
  final double width;
  final double height;
  final bool isLeftOne;

  const MainBoxes(
      {super.key,
      required this.width,
      required this.height,
      required this.isLeftOne,
      required this.walletModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: isLeftOne
          ? const Card(
              color: Colors.white,
              child: Icon(
                Icons.close,
                size: 23,
              ),
            )
          : Card(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 12,
                    child: Image.asset(Assets.assetsTonImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      walletModel.walletAddress,
                      style: Get.textTheme.titleMedium!.copyWith(fontSize: 15,fontWeight: FontWeight.w600),
                    ),
                  ),

                ],
              )),
    );
  }
}
