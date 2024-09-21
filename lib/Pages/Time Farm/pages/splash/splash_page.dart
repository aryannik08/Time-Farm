import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/Pages/Time%20Farm/pages/splash/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
      builder: (controller) =>
          Scaffold(
            backgroundColor: controller.bgColor,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                    child: Text("Welcome!")
                ),
                FilledButton(onPressed: () {
                  controller.changeColor();
                }, child: const Text("Click me!"))
              ],
            ),
          ),
    );
  }
}
