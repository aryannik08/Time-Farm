import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotify/Pages/Flutter/profile_page.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Pages/Flutter/home_page.dart';
import 'Pages/Time Farm/pages/activity/activity_page.dart';
import 'Pages/Time Farm/pages/earn/earn_page.dart';
import 'Pages/Time Farm/pages/friend/friend_page.dart';
import 'Pages/Time Farm/pages/home/home.dart';

import 'Pages/Time Farm/pages/tasks/tasks_page.dart';
import 'Pages/Time Farm/pages/wallet/wallet_page.dart';
import 'Pages/s_sh.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int money = 720000;

  int index = 0;

  Widget body() {
    switch (index) {
      case 0:
        return TimeFarm(
        );

      case 1:
        return TasksPage(money: money,
        );

      case 2:
        return const FriendPage();

      case 3:
        return const ActivityPage();

      case 4:
        return const EarnPage();

      case 5:
        return const WalletPage();

      default:
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.purple,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              exit(0);
            },
            icon: const Icon(Icons.close)),
        title: const Text(
          'Time Farm',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 400),
                      reverseDuration: const Duration(milliseconds: 500),
                      type: PageTransitionType.topToBottom,
                      alignment: Alignment.bottomCenter,
                      child: const SSH()));
            },
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          PopupMenuButton<String>(
            color: Colors.white,
            icon: const Icon(Icons.more_vert),
            onSelected: (String result) async {
              if (result == 'open bot') {
                Get.to(
                  () => const HomePage(),
                  duration: const Duration(milliseconds: 400),
                  transition: Transition.rightToLeft,
                );

                // Navigator.push(
                //     context,
                //     PageTransition(
                //         duration: const Duration(milliseconds: 400),
                //         reverseDuration: const Duration(milliseconds: 500),
                //         type: PageTransitionType.rightToLeft,
                //         child: const HomePage()));
              }
              if (result == 'spotify') {
                Navigator.push(
                    context,
                    PageTransition(
                        duration: const Duration(milliseconds: 400),
                        reverseDuration: const Duration(milliseconds: 500),
                        type: PageTransitionType.scale,
                        childCurrent: TimeFarm(),
                        alignment: Alignment.centerRight,
                        child: const ProfilePage()));
              }
              if (result == 'reload page') {
                Get.appUpdate();
              }
              if (result == 'terms of use') {
                final Uri url = Uri.parse('https://www.bing.com/');
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'open bot',
                child: Row(
                  children: [
                    HugeIcon(
                        icon: HugeIcons.strokeRoundedMachineRobot,
                        color: Color(0xff5E5F60)),
                    Text('    Open Bot',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'settings',
                child: Row(
                  children: [
                    HugeIcon(
                        icon: HugeIcons.strokeRoundedSettings01,
                        color: Color(0xff5E5F60)),
                    Text(
                      '    Settings',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'reload page',
                child: Row(
                  children: [
                    HugeIcon(
                        icon: HugeIcons.strokeRoundedReload,
                        color: Color(0xff5E5F60)),
                    Text(
                      '    Reload Page',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'share',
                child: Row(
                  children: [
                    HugeIcon(
                        icon: HugeIcons.strokeRoundedShare01,
                        color: Color(0xff5E5F60)),
                    Text(
                      '    Share',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'terms of use',
                child: Row(
                  children: [
                    Icon(
                      Icons.newspaper,
                      color: Color(0xff5E5F60),
                    ),
                    Text(
                      '    Term of Use',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'privacy policy',
                child: Row(
                  children: [
                    Icon(
                      Icons.privacy_tip_outlined,
                      color: Color(0xff5E5F60),
                    ),
                    Text(
                      '    privacy policy',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'spotify',
                child: Row(
                  children: [
                    HugeIcon(
                        icon: HugeIcons.strokeRoundedSpotify,
                        color: Color(0xff5E5F60)),
                    Text(
                      '    Spotify',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      backgroundColor: const Color(0xff000000),
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(index == 0 ? Icons.home : Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(index == 1 ? Icons.task : Icons.task), label: 'Tasks'),
          BottomNavigationBarItem(
              icon: Icon(index == 2
                  ? Icons.people_alt_rounded
                  : Icons.people_alt_rounded),
              label: 'Frends'),
          BottomNavigationBarItem(
              icon: Icon(index == 3 ? Icons.wine_bar : Icons.wine_bar),
              label: 'Activity'),
          BottomNavigationBarItem(
              icon: Icon(index == 4
                  ? Icons.earbuds_battery_outlined
                  : Icons.earbuds_battery_outlined),
              label: 'Earn'),
          BottomNavigationBarItem(
              icon: Icon(index == 4
                  ? Icons.account_balance_wallet
                  : Icons.account_balance_wallet),
              label: 'Wallet'),
        ],
      ),
    );
  }
}
