import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Pages/Time%20Farm/models/Activity/activity_model.dart';
import 'package:spotify/Pages/Time%20Farm/widgets/Activity/activity_widget.dart';
import 'package:spotify/generated/assets.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF3F2F5),
      body: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Leaderboard',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
              ),
              Card(
                color: const Color(0xfff8f8f8),
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: AspectRatio(
                  aspectRatio: 2.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: mediaQuery.width / 30,vertical: mediaQuery.height / 100),
                        child: const Row(
                          children: [
                            Text("Get crypto",style: TextStyle(fontSize: 15,))
                          ],
                        ),
                      ),
                      Padding(
                         padding: EdgeInsets.symmetric(horizontal: 15),
                         child: Row(
                          children: [
                            const Text("+ 1K USDT",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                            const Spacer(),
                            const Row(
                              children: [
                                Text("+50M",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600)),
                                Icon(Icons.attach_money,size: 35,)
                              ],
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.asset(Assets.assetsSecondArtBoard
                              ),
                            )
                          ],
                                           ),
                       ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: GestureDetector(
                          child: const Row(
                            children: [
                              Text(
                                "More details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff4838fa)),),
                              Icon(Icons.arrow_forward,color: Color(0xff4838fa))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: activityList.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      ActivityWidget(activityModel: activityList[index], number: index,)
                      // Songs(number: index, imageAddress: imageUrls[index], name: names[index], howManyTimesPlayed: theNumberOfPlayed[index],),
                    ],
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


