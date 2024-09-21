import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/generated/assets.dart';

import '../../../Flutter/home_page.dart';
import '../../../s_sh.dart';



class OracleOfTimePage extends StatelessWidget {
  const OracleOfTimePage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainThings(),
        ],
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

class MainThings extends StatelessWidget {
  const MainThings({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: mediaQuery.width,
          height: mediaQuery.height / 3,
          child: Image.asset(
            Assets.assetsAbc,
            alignment: const Alignment(0.0, -0.5),
            fit: BoxFit.cover,
          ),

        ),
        const SizedBox(height: 10),
        const Text(
          "You have already answered today's question",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 5),
        const Text(
          "Come back tomorrow to claim a new reward",
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}

