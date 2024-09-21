import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/main_page.dart';

class SplashController extends GetxController{
  Color bgColor = Colors.blue;
  changeColor(){
    if (bgColor == Colors.blue) {
      bgColor = Colors.red;
    } else {
      bgColor = Colors.blue;
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    goToMainPage();
  }

  Future goToMainPage() async {
    await Future.delayed(const Duration(seconds: 5)).whenComplete(() {
      Get.off(const MainPage());
    },);
  }

}