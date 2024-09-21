import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/generated/assets.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF3F2F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF3F2F5),
        title: const Column(
          children: [
            SizedBox(
              height: 33,
            ),
            Text(
              'Invite frends',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: mediaQuery.height / 40),
            child: Center(
              child: SizedBox(
                  width: mediaQuery.width / 1.4,
                  child: const Center(
                    child: Text(
                      "Earn 20% for your direct referrals, 10% for their referrals, then 5%, 2.5%, and 1.25% for your fifth-level referrals. Plus earn 15,000 SECOND for each invite, while your friend receives 30,000!",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff818085)),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: mediaQuery.height / 3,
            child:Image.asset(Assets.assetsArtBoard,fit: BoxFit.cover,),
          )
        ],
      ),
      bottomSheet: Container(
        color: const Color(0xffF3F2F5),
        height: mediaQuery.height / 9,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                width: mediaQuery.width / 1.17,
                height: 50,
                color: const Color(0xff4837ff),
                child: TextButton(onPressed: () {

                }, child: const Text("Invite a frend",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
