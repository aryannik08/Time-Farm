import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify/Pages/Time%20Farm/models/Tasks/tasks_models.dart';
import 'package:spotify/Pages/Time%20Farm/widgets/Tasks/completed_task_widget.dart';
import 'package:spotify/Pages/Time%20Farm/widgets/Tasks/task_widget.dart';

import '../../models/Tasks/completed_tasks_models.dart';



class TasksPage extends StatelessWidget {
  final int money;

  const TasksPage({super.key, required this.money});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfff3f2f7),
      body: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Center(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Available Tasks",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                ),
              )),
              SizedBox(
                  width: mediaQuery.width / 1.4,
                  child: const Column(
                    children: [
                      Text(
                        "Complete any task and receive instant",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontSize: 15),
                      ),
                      Text("rewards!",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 15)),
                    ],
                  )),
              TabBar(
                money: money,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabBar extends StatefulWidget {
  final int money;

  const TabBar({super.key, required this.money});

  @override
  State<TabBar> createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  double width = 180;
  bool isActiveList = true;
  Color activeColor = const Color(0xffEDEBFF);
  Color completedColor = const Color(0xffF8F8F8);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    activeColor = const Color(0xffEDEBFF);
                    completedColor = const Color(0xffF8F8F8);
                    isActiveList = true;
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: activeColor,
                    ),
                    width: width,
                    height: 40,
                    child: const Center(
                      child: Text("Active",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black)),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    activeColor = const Color(0xffF8F8F8);
                    completedColor = const Color(0xffEDEBFF);
                    isActiveList = false;
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: completedColor,
                    ),
                    width: width,
                    height: 40,
                    child: const Center(
                      child: Text("Completed",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black)),
                    )),
              ),
            ],
          ),
          if (isActiveList == true)
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                height: mediaQuery.height / 1.5,
                child: ListView.builder(
                    itemCount: taskList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => TaskWidget(
                          taskModels: taskList[index],
                          money: widget.money,
                        )),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                height: mediaQuery.height / 1.5,
                child: ListView.builder(
                    itemCount: completedTaskList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => CompletedTaskWidget(
                      money: widget.money, completedTasksModels: completedTaskList[index],
                    )),
              ),
            ),
        ],
      ),
    );
  }
}
