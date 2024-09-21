import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class CompletedTasksModels {
  IconData icon;
  String taskName;
  int amountOfTimeFarmCoin;

  CompletedTasksModels(
      {required this.icon,
        required this.taskName,
        required this.amountOfTimeFarmCoin});
}

List<CompletedTasksModels> completedTaskList = [
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedWallet03,
      taskName: "Connect TON wallet",
      amountOfTimeFarmCoin: 250000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedCircleArrowReload01,
      taskName: "Win 200 BGB on 1st trade with Bitget",
      amountOfTimeFarmCoin: 400000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedCircleArrowReload01,
      taskName: "Follow Bitget on X task",
      amountOfTimeFarmCoin: 100000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedCircleArrowReload01,
      taskName: "Subscribe Bitget Official Discord Channel",
      amountOfTimeFarmCoin: 100000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedNewTwitter,
      taskName: "Follow ebi.xyz on X",
      amountOfTimeFarmCoin: 100000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedTelegram,
      taskName: "Join ELSE, collect bonus, make 50 taps to Bronze level",
      amountOfTimeFarmCoin: 100000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedNewTwitter,
      taskName: "Play X Empire now!",
      amountOfTimeFarmCoin: 100000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedNewTwitter,
      taskName: "Follow Mashaverse on X",
      amountOfTimeFarmCoin: 100000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedInstagram,
      taskName: "Follow Mashaverse on Instagram",
      amountOfTimeFarmCoin: 100000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedNewTwitter,
      taskName: "Subscribe to Justice.xyz in X and repost last post",
      amountOfTimeFarmCoin: 100000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedTelegram,
      taskName: "Subscribe to GameDev News channel",
      amountOfTimeFarmCoin: 100000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedNewTwitter,
      taskName: "Follow our CEO on X",
      amountOfTimeFarmCoin: 100000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedTelegram,
      taskName: "Subscribe to our CEO channel",
      amountOfTimeFarmCoin: 100000),
  CompletedTasksModels(
      icon: HugeIcons.strokeRoundedInstagram,
      taskName: "Follow our CEO on Instagram",
      amountOfTimeFarmCoin: 100000),
];
