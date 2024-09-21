

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SSH extends StatefulWidget {
  const SSH({super.key});

  @override
  State<SSH> createState() => _SSHState();
}

class _SSHState extends State<SSH> {
  int TedadSSH = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'صلوات شمار',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.20,
                image: NetworkImage(
                  "https://devcdn.heon.ir/Haram/2022/03/17/5797a6d4-b752-474c-9e74-14fae74dfc9d.jpeg",
                ),
              ),
            ),
          ),
          IconButton(onPressed: () {
            setState(() {
              TedadSSH = 0;
            });
          }, icon: const Text("بازنشانی صلوات ها",style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.w600),)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      TedadSSH = TedadSSH + 1;
                    });
                  },
                  icon: const AddSSHButton(),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "صلوات فرستادید",
                      style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),
                    ),
                    Text(
                      " $TedadSSH ",
                      style: const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      "شما",
                      style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}


class AddSSHButton extends StatefulWidget {
  const AddSSHButton({super.key});

  @override
  State<AddSSHButton> createState() => _AddSSHButtonState();
}

class _AddSSHButtonState extends State<AddSSHButton> {
  @override
  Widget build(BuildContext context) {
    return const
    Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          Icons.circle,
          size: 150,
          color: Colors.green,
        ),
        Icon(
          Icons.add,
          size: 35,
          color: Colors.white,
        ),
      ],
    );
  }
}

