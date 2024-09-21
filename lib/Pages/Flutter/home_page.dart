

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.menu)),
        title: const Text('Home'),
        centerTitle: true,
        actions: const [
          Icon(Icons.live_tv_rounded),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: 80,
                  right: 30,
                  left: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Opacity(
                      opacity: 0.25,
                      child: Image.network(
                        "https://s3-alpha-sig.figma.com/img/e6b6/c3d0/3a127d1cfa80dc127fd806cdbbccc561?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YjbZ60s0ks1XcLYt5kE5itAwAva3Xi4qay1qcl3KJWPVJbyszyI-Mep8GweczMOHCTld~Bqho7mWkPwZo89-Cwjt1Sm0pfOchCBgQAgZ~eMUfe2Fc~naJgTKyJQ3hJFewIMs8hEM3Dypvv1rV9W0tbmx9Vu2UMVIK9G9o92tAVLAWmPlD32cYMrxERY62Nxoowh6e1suzuaKHfu5fCuMIZN9qBpv9WBrPA8~YKL6Usd6s9xUbB4uYFhIDLOAYtRZAXIanZnlbKMLo22SDFP2ECn1pdN1mR9GlDpFT8hPf3wf4aE9WuHqMNCXHCQHyNGpzsS2iQSnrom69sXlE6DFEA__",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  right: 20,
                  left: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Opacity(
                      opacity: 0.75,
                      child: Image.network(
                        "https://img.freepik.com/free-photo/abstract-vibrant-colored-autumn-leaf_23-2148239742.jpg?size=626&ext=jpg",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  right: 5,
                  bottom: -20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        Image.network(
                            "https://img.freepik.com/free-photo/isolated-feather-studio_23-2151436614.jpg?size=626&ext=jpg"),
                        const Positioned(
                            left: 20, top: 20, child: ProfileInformation()),

                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 120,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                BottomNavigatorButtons(
                                  icon: Icons.home,
                                  color: Colors.black,
                                ),
                                BottomNavigatorButtons(
                                  icon: Icons.search,
                                  color: Colors.grey,
                                ),
                                BottomNavigatorButtons(
                                  icon: Icons.notifications,
                                  color: Colors.grey,
                                ),
                                CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://img.freepik.com/free-photo/delicious-looking-cupcake-with-sprinkles-floating-air_23-2150679478.jpg?size=626&ext=jpg&ga=GA1.1.218509982.1724140837&semt=ais_hybrid"))
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 100,
                          right: 100,
                          bottom: 50,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Icon(
                                Icons.hexagon,
                                size: 80,
                                color: Colors.purpleAccent,
                              ),
                              Icon(
                                Icons.add,
                                size: 35,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg"),
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          children: [
            Text(
              "John Carter",
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
            ),
            Text(
              "Washington",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: mediaQuery.width / 2.5),
          child: const Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class BottomNavigatorButtons extends StatelessWidget {
  final IconData icon;
  final Color color;

  const BottomNavigatorButtons(
      {super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        )
      ],
    );
  }
}

class LikeAndComments extends StatelessWidget {
  const LikeAndComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      height: 50,
      width: 30,
      decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(2)),
    );
  }
}

