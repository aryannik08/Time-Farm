import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Pages/Time%20Farm/models/Activity/activity_model.dart';

class ActivityWidget extends StatelessWidget {
  final ActivityModel activityModel;
  final int number;
  const ActivityWidget({super.key, required this.activityModel, required this.number});


  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              Text(
                "${number + 1}",
                style: TextStyle(
                  fontSize: 20,
                  color:
                  (number + 1 == 1) ? Colors.yellow :
                  (number + 1 == 2) ? Colors.grey :
                  (number + 1 == 3) ? Colors.brown :
                  Colors.black,
                ),
              ),
              SizedBox(width: mediaQuery.width / 2,child: Text("       ${activityModel.name}",maxLines: 1,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)),
              const Spacer(),
              Text("${activityModel.amountOfFriends} frens",style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Color(0xff4d39ce)),),
            ],
          ),
        ),
      ),
    );
  }
}
