import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotify/Pages/Flutter/UX_video_page.dart';
import 'package:spotify/Pages/Flutter/home_page.dart';

import '../Earn_Pages/oracle_page.dart';
import '../Earn_Pages/staking_page.dart';
import '../Earn_Pages/store_page.dart';

class EarnPage extends StatelessWidget {
  const EarnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Text(
                    'Earn',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                  ),
                ),
              ),
              MainCards(
                  index: 1,
                  icon: Icons.trending_up_outlined,
                  title: 'Staking',
                  description:
                      "Lock up a portion of your digital assets for a specific period to earn rewards"),
              MainCards(
                  index: 2,
                  icon: Icons.date_range_outlined,
                  title: "Oracle of Time",
                  description:
                      "Answer questions, guess the dates and claim rewards every day"),
              MainCards(
                  index: 3,
                  icon: Icons.storefront_sharp,
                  title: "Store",
                  description:
                      "For those who want to farm at maximum efficiency")
            ],
          ),
        ),
      ),
    );
  }
}

class MainCards extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;
  final int index;

  const MainCards(
      {super.key,
      required this.icon,
      required this.title,
      required this.description,
      required this.index});

  @override
  State<MainCards> createState() => _MainCardsState();
}

class _MainCardsState extends State<MainCards> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return AspectRatio(
      aspectRatio: 3.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: GestureDetector(
          onTap: () {
            if (widget.index == 1) {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 400),
                      reverseDuration: const Duration(milliseconds: 500),
                      type: PageTransitionType.topToBottom,
                      alignment: Alignment.bottomCenter,
                      child: const StakingPage()));
            }
            if (widget.index == 2) {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 400),
                      reverseDuration: const Duration(milliseconds: 500),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      child: const OracleOfTimePage()));
            }
            if (widget.index == 3) {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 400),
                      reverseDuration: const Duration(milliseconds: 500),
                      type: PageTransitionType.bottomToTop,
                      childCurrent: const EarnPage(),
                      alignment: Alignment.bottomCenter,
                      child: const StorePage()));
            }
          },
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 1.5),
                            bottom: BorderSide(color: Colors.grey, width: 1.5),
                            right: BorderSide(color: Colors.grey, width: 1.5),
                            left: BorderSide(color: Colors.grey, width: 1.5))),
                    child: Icon(
                      widget.icon,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        SizedBox(
                            width: mediaQuery.width / 1.5,
                            child: Text(
                              widget.description,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
