

import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class UXPage extends StatefulWidget {
  const UXPage({super.key});

  @override
  State<UXPage> createState() => _UXPageState();
}

class _UXPageState extends State<UXPage> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();


    _videoPlayerController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );


    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Chewie(
              controller: _chewieController,
            ),
          ),
          const Row(
            children: [
              TopicText(
                text: '90 Days Become UX Designer',
              ),
              Spacer(),
              FavoriteCircle(),
              SizedBox(
                width: 20,
              )
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 17,
              ),
              Text("4.9 (9,865)"),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 3,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.watch_later,
                size: 17,
                color: Colors.black54,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text("80 Sessions"),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                    text:
                        'Companies of all types and sizes rely on user experience(UX) designers to help',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w400)),
                TextSpan(
                  text: 'Read More',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w600),
                )
              ]),
            ),
          ),
          const ProfileSection(name: "Leo Mango", bio: 'Top instructor'),
          const Row(
            children: [
              MidButtons(
                text: 'Videos',
              ),
              MidButtons(
                text: 'Discussions',
              ),
              MidButtons(
                text: 'certificate',
              )
            ],
          ),
          const MidBoxes(
            boxColor: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xffFAFAFA),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              width: double.infinity,
              height: 100,
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "UX Design Process",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.lock,
                      size: 30,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xff2569B2)),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Enroll \$120",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TopicText extends StatelessWidget {
  final String text;

  const TopicText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        maxLines: 1,
      ),
    );
  }
}

class FavoriteCircle extends StatelessWidget {
  const FavoriteCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Color(0xffF4F3F4),
      child: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final String name;
  final String bio;

  const ProfileSection({super.key, required this.name, required this.bio});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        children: [
          const CircleAvatar(
            foregroundImage: NetworkImage(
                "https://s3-alpha-sig.figma.com/img/7b51/7fd1/166e1c96bb4d606ab3bc83385540dadb?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Hws7keaofT1yW4KqTlbR7D8QluMfNgbXy18KsVXWKbP9i6OXBRFyKgN2oCyxabJ3aa096qfOjtoehqjqkBnRf0aWTMdL9489Brdz81i39iYGX2CGTDRHkeuaWodTdenrScZa9Ws8vs3RijJ5W0lPYtcqK87kBWxHSds21V8jkQoIUrSbC2rHYoQ5aLF2rcvKp1vTAd7Yfs-LBsNMFbBhMnAl2GUNnSx~cPMTEZEFXChMliNhVYs~jCHXI2A5BKQeTRtwer9UlRtHOfLQAMkql~lpVuGxJkOpUvD9fkgAC~kylTPL9kyR4ngDu3I1~mSwJ2vRUs2hjqcjoifgqKdq4Q__"),
          ),
          Column(
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.verified,
                    color: Colors.blue,
                    size: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    bio,
                    style: TextStyle(fontSize: 12),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class MidButtons extends StatelessWidget {
  final String text;

  const MidButtons({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: OutlinedButton(
          style: const ButtonStyle(
              side: MaterialStatePropertyAll(BorderSide(color: Colors.grey)),
              overlayColor: MaterialStatePropertyAll(Colors.blue)),
          onPressed: () {},
          child: Text(text)),
    );
  }
}

class MidBoxes extends StatelessWidget {
  final Color boxColor;

  const MidBoxes({super.key, required this.boxColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
            color: boxColor,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(20)),
        width: double.infinity,
        height: 100,
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 8),
              child: Column(
                children: [
                  Text(
                    "Intro to UX Designer",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        " 3 Videos",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.watch_later,
                        size: 15,
                        color: Colors.grey,
                      ),
                      Text(
                        "14 m 35 s",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xffF4F3F4),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
