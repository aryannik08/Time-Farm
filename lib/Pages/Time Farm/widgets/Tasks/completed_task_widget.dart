import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:spotify/Pages/Time%20Farm/models/Tasks/completed_tasks_models.dart';

class CompletedTaskWidget extends StatefulWidget {
  final CompletedTasksModels completedTasksModels;
  int money;
  CompletedTaskWidget({super.key, required this.completedTasksModels, required this.money});

  @override
  State<CompletedTaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<CompletedTaskWidget> {

  bool isBitget = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return
    Container(
      width: double.infinity,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: widget.completedTasksModels.icon == HugeIcons.strokeRoundedCircleArrowReload01 ? const Color(0xff00F0FF) : const Color(0xffE9E8EE),foregroundColor: widget.completedTasksModels.icon == HugeIcons.strokeRoundedCircleArrowReload01 ? const Color(0xff000000) : const Color(0xff77787D),
              child: Icon(widget.completedTasksModels.icon),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: mediaQuery.width / 2,
                    child: Text(
                      widget.completedTasksModels.taskName,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                  ),
                  UnderTaskNameWidgets(amountOfPrize: widget.completedTasksModels.amountOfTimeFarmCoin),
                ],
              ),
            ),
            const Spacer(),

            FilledButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(widget.completedTasksModels.icon == HugeIcons.strokeRoundedCircleArrowReload01 ? const Color(0xff00F0FF) : const Color(0xffC8C2FE))),onPressed: () {
              setState(() {


              });
            }, child: const Icon(HugeIcons.strokeRoundedTick02))
          ],
        ),
      ),
    );
  }
}


class UnderTaskNameWidgets extends StatelessWidget {
  final int amountOfPrize;
  const UnderTaskNameWidgets({super.key, required this.amountOfPrize,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("+"),
        const Icon(Icons.attach_money,size: 20),
        Text("$amountOfPrize",style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)
      ],
    );
  }
}