import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class StoreModel {
  IconData icon;
  String name;
  String description;
  double tonPrice;
  int majorPrice;

  StoreModel(
      {required this.icon,
      required this.name,
      required this.description,
      required this.tonPrice,
      required this.majorPrice});
}

List<StoreModel> storeList = [
  StoreModel(
      icon: HugeIcons.strokeRoundedRobotic,
      name: "Farmer's Assistant",
      description: "Farmer's Assistant",
      tonPrice: 1,
      majorPrice: 500),
  StoreModel(
      icon: HugeIcons.strokeRoundedTwoFactorAccess,
      name: "Farming Booster: x2 for 1 day",
      description: "Get x2 farming speed for 1 day",
      tonPrice: 0.2,
      majorPrice: 100),
  StoreModel(
      icon: HugeIcons.strokeRoundedRobotic,
      name: "Farmer's Assistant",
      description: "Farmer's Assistant",
      tonPrice: 1,
      majorPrice: 500),
  StoreModel(
      icon: HugeIcons.strokeRoundedRobotic,
      name: "Farmer's Assistant",
      description: "Farmer's Assistant",
      tonPrice: 1,
      majorPrice: 500),
  StoreModel(
      icon: HugeIcons.strokeRoundedRobotic,
      name: "Farmer's Assistant",
      description: "Farmer's Assistant",
      tonPrice: 1,
      majorPrice: 500),
];
