class StakingModel {
  int totalMoneyUsed;
  String howManyDaysStaking;
  String whichDayWillBeBack;
  String whichMonthWillBeBack;
  String whichYearWillBeBack;
  String howManyPercentUsed;
  int howMuchProfit;

  StakingModel(
      {required this.totalMoneyUsed,
      required this.howManyDaysStaking,
      required this.whichDayWillBeBack,
      required this.whichMonthWillBeBack,
      required this.whichYearWillBeBack,
      required this.howManyPercentUsed,
      required this.howMuchProfit});
}

List<StakingModel> stakingList = [
  StakingModel(
      totalMoneyUsed: 1690000,
      howManyDaysStaking: "3",
      whichDayWillBeBack: "03",
      whichMonthWillBeBack: "09",
      whichYearWillBeBack: "2024",
      howManyPercentUsed: "3",
      howMuchProfit: 50700),
  StakingModel(
      totalMoneyUsed: 3828160,
      howManyDaysStaking: "3",
      whichDayWillBeBack: "04",
      whichMonthWillBeBack: "09",
      whichYearWillBeBack: "2024",
      howManyPercentUsed: "3",
      howMuchProfit: 114845),
  StakingModel(
      totalMoneyUsed: 3127700,
      howManyDaysStaking: "3",
      whichDayWillBeBack: "05",
      whichMonthWillBeBack: "09",
      whichYearWillBeBack: "2024",
      howManyPercentUsed: "3",
      howMuchProfit: 93831),
];
