
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Pages/Time%20Farm/models/Earn/Staking/staking_model.dart';
import 'package:spotify/Pages/Time%20Farm/widgets/Earn/Staking_widget/staking_widget.dart';

import '../../../Flutter/home_page.dart';
import '../../../s_sh.dart';

class StakingPage extends StatelessWidget {
  const StakingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF3F2F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const LeadingIconButton(),
        title: const Text(
          'Time Farm',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: const [
          FirstActionButton(),
          SizedBox(
            width: 10,
          ),
          SecondActionButton(),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Text(
                    'Staking',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                  ),
                ),
              ),
              Center(
                  child: SizedBox(width: mediaQuery.width / 1.2,child: const Text("Lock up a portion of your digital assets for a specific period to earn rewards",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 16,),))),
              SizedBox(height: mediaQuery.height / 30),
              StakingWidget(stakingModel: stakingList[0]),
              StakingWidget(stakingModel: stakingList[1]),
              StakingWidget(stakingModel: stakingList[2]),
            ],
          ),
        ),
      ),
    );
  }
}

// ////////////////////////////////////////////////////////////////////////////
class LeadingIconButton extends StatefulWidget {
  const LeadingIconButton({super.key});

  @override
  State<LeadingIconButton> createState() => _LeadingIconButtonState();
} /////////////////////////
class _LeadingIconButtonState extends State<LeadingIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back));
  }
} ////////
class FirstActionButton extends StatefulWidget {
  const FirstActionButton({super.key});

  @override
  State<FirstActionButton> createState() => _FirstActionButtonState();
} ///////////////////////
class _FirstActionButtonState extends State<FirstActionButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SSH(),
            ));
      },
      icon: const Icon(
        Icons.keyboard_arrow_down_outlined,
        size: 25,
      ),
    );
  }
} //////
class SecondActionButton extends StatefulWidget {
  const SecondActionButton({super.key});

  @override
  State<SecondActionButton> createState() => _SecondActionButtonState();
} ////////////////////
class _SecondActionButtonState extends State<SecondActionButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ));
      },
      icon: const Icon(
        Icons.more_vert,
      ),
    );
  }
} //
////////////////////////////////////////////////////////////////////////
