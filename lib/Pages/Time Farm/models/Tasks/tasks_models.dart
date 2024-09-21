import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class TaskModels {
  Icon icon;
  String taskName;
  int amountOfTimeFarmCoin;

  TaskModels(
      {required this.icon,
      required this.taskName,
      required this.amountOfTimeFarmCoin});
}

List<TaskModels> taskList = [
  TaskModels(
      icon: const Icon(HugeIcons.strokeRoundedTelegram),
      taskName: "Play CEX.IO Power Tap",
      amountOfTimeFarmCoin: 100000),
  TaskModels(
      icon: const Icon(HugeIcons.strokeRoundedBitcoinCircle),
      taskName: "Earn \$BOOMS token for free",
      amountOfTimeFarmCoin: 100000),
  TaskModels(
      icon: const Icon(HugeIcons.strokeRoundedTelegram),
      taskName: "Play Lovely Legends",
      amountOfTimeFarmCoin: 100000),
  TaskModels(
      icon: const Icon(HugeIcons.strokeRoundedTelegram),
      taskName: "Play 1 win token",
      amountOfTimeFarmCoin: 100000),
  TaskModels(
      icon: const Icon(HugeIcons.strokeRoundedTelegram),
      taskName: "Win Prize with HEXN",
      amountOfTimeFarmCoin: 100000),
  TaskModels(
      icon: const Icon(HugeIcons.strokeRoundedTelegram),
      taskName: "Subscribe to TimeFarm channel",
      amountOfTimeFarmCoin: 100000),
];
