import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Pages/Time%20Farm/models/Tasks/tasks_models.dart';

class TaskWidget extends StatefulWidget {
  final TaskModels taskModels;
  int money;
  TaskWidget({super.key, required this.taskModels, required this.money});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return isVisible ?
      Container(
      width: double.infinity,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xffE9E8EE),foregroundColor: const Color(0xff77787D),
              child: widget.taskModels.icon,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: mediaQuery.width / 2,
                    child: Text(
                      widget.taskModels.taskName,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                  ),
                  UnderTaskNameWidgets(amountOfPrize: widget.taskModels.amountOfTimeFarmCoin),
                ],
              ),
            ),
            const Spacer(),

            FilledButton(style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xffFC5904))),onPressed: () {
              setState(() {
                isVisible = false;
                widget.money += widget.taskModels.amountOfTimeFarmCoin;
              });
            }, child: const Text("Start",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),))
          ],
        ),
      ),
    ) : const SizedBox();
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
