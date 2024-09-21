import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Pages/Time%20Farm/widgets/Earn/store_widget/store_widget.dart';

import '../../../Flutter/home_page.dart';
import '../../../s_sh.dart';
import '../../models/Earn/Store/store_model.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

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
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                'Store',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
              ),
            ),
          ),
          Center(
              child: SizedBox(width: mediaQuery.width / 1.2,child: const Text("For those who want to farm at maximum efficiency",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 16,),))),
          SizedBox(height: mediaQuery.height / 30),
          Row(
            children: [
              Expanded(child: StoreWidget(storeModel: storeList[0],)),
              Expanded(child: StoreWidget(storeModel: storeList[1],))
            ],
          )
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
