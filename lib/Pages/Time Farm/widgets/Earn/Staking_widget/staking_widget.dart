import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Pages/Time%20Farm/models/Earn/Staking/staking_model.dart';

class StakingWidget extends StatelessWidget {
  final StakingModel stakingModel;
  const StakingWidget({super.key, required this.stakingModel});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mediaQuery.width / 40),
      child: AspectRatio(
        aspectRatio:  3.5,
        child: Card(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    TotalMoneyUsed(stakingModel: stakingModel),
                    const Spacer(),
                    WhichDateWillReceive(stakingModel: stakingModel),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    PercentOfStakingAndMoneyWillReceive(stakingModel: stakingModel),
                    const Spacer(),
                    FilledButton(style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xffbfb9ff))),onPressed: () {
                      LockState.locked;
                    }, child: const Text("Claim",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TotalMoneyUsed extends StatelessWidget {
  final StakingModel stakingModel;
  const TotalMoneyUsed({super.key, required this.stakingModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.attach_money),
        Text("${stakingModel.totalMoneyUsed}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
      ],
    );
  }
}

class WhichDateWillReceive extends StatelessWidget {
  final StakingModel stakingModel;
  const WhichDateWillReceive({super.key, required this.stakingModel});

  @override
  Widget build(BuildContext context) {
    return Text("${stakingModel.howManyDaysStaking} days (ends ${stakingModel.whichDayWillBeBack}.${stakingModel.whichMonthWillBeBack}.${stakingModel.whichYearWillBeBack})",style: const TextStyle(color: Colors.grey),);
  }
}

class PercentOfStakingAndMoneyWillReceive extends StatelessWidget {
  final StakingModel stakingModel;
  const PercentOfStakingAndMoneyWillReceive({super.key, required this.stakingModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${stakingModel.howManyPercentUsed}%",style: const TextStyle(fontSize: 20,color: Color(0xff483af2),fontWeight: FontWeight.w600),),
        Text(
            "  (\$ ${stakingModel.howMuchProfit})",style: const TextStyle(fontSize: 16,color: Color(0xff483af2),fontWeight: FontWeight.w500)),
      ],
    );
  }
}
