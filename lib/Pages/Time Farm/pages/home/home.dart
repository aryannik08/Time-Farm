import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:spotify/Pages/Flutter/UX_video_page.dart';
import 'package:spotify/generated/assets.dart';
import 'package:video_player/video_player.dart';

class TimeFarm extends StatefulWidget {

  TimeFarm({super.key,});

  @override
  State<TimeFarm> createState() => _TimeFarmState();
}

class _TimeFarmState extends State<TimeFarm> with SingleTickerProviderStateMixin {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  final GetStorage _storage = GetStorage();
  int money = 720000;

  @override
  void initState() {
    super.initState();

    money = _storage.read('money') ?? 0;

    _videoPlayerController = VideoPlayerController.asset(Assets.assetsSpaceWatch);


    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 1 / 1,
      autoPlay: true,
      allowFullScreen: false,
      allowMuting: false,
      allowPlaybackSpeedChanging: false,
      showControls: false,
      showControlsOnInitialize: false,
      zoomAndPan: false,
      useRootNavigator: false,
      looping: true,
      showOptions: false,
      isLive: true,
    );
  }

  void _incrementMoney() {
    setState(() {
      money += 720000;
      _storage.write('money', money);
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  String text = 'Start';
  int bottomIndex = 0;
  Color boxColor = const Color(0xff4837ff);

  @override
  Widget build(BuildContext context) {
    String formattedNumber = NumberFormat('#,###').format(money);
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF3F2F5),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 50, left: 15, right: 15),
            child: Row(
              children: [
                ProfileSection(text: 'Aryan ...'),
                Spacer(),
                FilledButtonClass(),
                Spacer(),
                LanguagesButton()
              ],
            ),
          ),
          Text(
            "\$ $formattedNumber",
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: AspectRatio(
                aspectRatio: 1/1,
                child: Chewie(
                  controller: _chewieController,
                ),
              ),
            ),
          ),
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
                color: boxColor,
                child: TextButton(
                  onPressed: () {
                    if (text == 'Start') {
                      setState(() {
                        text = 'Claim 720,000';
                        boxColor = const Color(0xff9188FF);
                      });
                    } else {
                      setState(() {
                        text = 'Start';
                        boxColor = const Color(0xff4837ff);
                      });
                      _incrementMoney();
                    }
                  },
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final String text;
  const ProfileSection({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://th.bing.com/th/id/OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH?rs=1&pid=ImgDetMain"),
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w700),
          maxLines: 1,
        )
      ],
    );
  }
}

class FilledButtonClass extends StatelessWidget {
  const FilledButtonClass({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Color(0xff4837ff)),
      ),
      onPressed: () {
      },
      child: const Row(
        children: [
          Icon(Icons.local_fire_department, color: Colors.orange),
          Text("Upgrade")
        ],
      ),
    );
  }
}

class LanguagesButton extends StatelessWidget {
  const LanguagesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const UXPage(),
            ),
          );
        },
        icon: const Icon(
          Icons.language,
          color: Colors.grey,
        ),
      ),
    );
  }
}
