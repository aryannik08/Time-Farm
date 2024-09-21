
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotify/main_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> imageUrls = [
  'https://th.bing.com/th/id/OIP.Zu87gW73klh42UG7Q_28yQAAAA?rs=1&pid=ImgDetMain',
  "https://th.bing.com/th/id/OIP.GIS6YiV3hvbS7sVi_1rpYAHaEK?rs=1&pid=ImgDetMain",
  "https://th.bing.com/th/id/R.5947cd3e0926212583645e1a0338d95b?rik=XNBP2h00AlOoJQ&riu=http%3a%2f%2fwww.telegraph.co.uk%2fcontent%2fdam%2fTravel%2fgalleries%2ftravel%2fhubs%2fthebigpicture%2fthe-big-picture-photography-competition-round-399%2fsummary-xlarge.jpg&ehk=lTJyl1Zt4y3wLPUXxE3og12EDrgHxitAlQP77I0d4Jw%3d&risl=&pid=ImgRaw&r=0"
  "https://th.bing.com/th/id/OIP.ieYaDo1sROUJ-PLPL2_kxwHaEo?rs=1&pid=ImgDetMain",
  "https://static.wixstatic.com/media/8a8033_a738085f564f4d43aa34edebaebae5b5~mv2_d_1600_1600_s_2.jpg/v1/fit/w_1000%2Ch_1000%2Cal_c%2Cq_80/file.jpg",
  "https://th.bing.com/th/id/R.35cf51de2c603826e1fc9987f5a3048d?rik=1Bi5p4CH1bXdWA&pid=ImgRaw&r=0",
  "https://th.bing.com/th/id/R.d8454d1c75f80fe8d66e7a1f26c6901c?rik=KRWg43bXPMTz2Q&pid=ImgRaw&r=0",
  "https://th.bing.com/th/id/R.71fc55a0f2becd702cc4a893980dea57?rik=XOUhz40Jc9OcYg&riu=http%3a%2f%2fthewowstyle.com%2fwp-content%2fuploads%2f2015%2f01%2fnature-images-6.jpg&ehk=BQoi8QCZQtCfHkXWT0TIAxv1vTtTO1rY7ctKskX6Xfs%3d&risl=&pid=ImgRaw&r=0",
  "https://www.aaronreedphotography.com/images/960/On-Earth-As-It-Is-In-Heaven-Web2020.jpg",
  "https://th.bing.com/th/id/R.051d66de003e584454c3d6c28a5f69f7?rik=ibRq6KSXbk7Mgg&pid=ImgRaw&r=0",
  "https://th.bing.com/th/id/R.447b4f225636e916365e015fb327be6b?rik=NdvlIr%2f3J%2f%2fPgQ&pid=ImgRaw&r=0"
  ];

  final List<String> names = [
    'Jimmy','Jack','Brade','Wolf','Winter','Hello!!','Sunrise','Beautiful','Love','Fancy','Fall in love'];

  final List<String> theNumberOfPlayed = [
    '79,546,512','54,155,455','3,654,697','654,504,354','5,972,545','98,545,068','42,680,684','87,984,425','564,506','87,594','102,654,806'];
  int bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretch: true,
            backgroundColor: Colors.black,
            pinned: true,
            expandedHeight: 250,
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 400),
                          reverseDuration: const Duration(milliseconds: 500),
                          type: PageTransitionType.scale,
                          alignment: Alignment.topLeft,
                          childCurrent: const ProfilePage(),
                          child: const MainPage()));
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [StretchMode.zoomBackground],
              title: Text('Jay Chou',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(color: Colors.white)),
              background: Image.network(
                "https://s3-alpha-sig.figma.com/img/5324/7df2/317c1af10c98d1b327dad5714aacc029?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=b2r8Jrt07jBwGie1DnAN6FOrlh8q9K1VMvKNmt2hzCMXepqTBQ9J2A1sFVw1Syd170R3ly4d1-E7i~i2UtKAM4FXyfBh7yB80xIlTtWbneXErkhyRs6Ra0NOHTaEBm2Szq4lebBIZIUhy2tMCMhi96213BSanQ0cPl58T2E-MI2g5xdcVJZNT4QQ0XVL-gYLm3rvKd135pLDN7UxCmo1RxG4gQMFbnNPIawA7YVcbAlfF2bgz3HMjXs7UHt42JV5eQpXS3ZJoacqKwvCLOmde~xveTTJ8bDdp0ydYwEnHz~29CC5V1KaEjOg3q3ucDCqtOuhSDMA9GXLURJ~Xs-QAQ__",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              height: 100,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "2.7M monthly listeners",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(8)),
                          width: 35,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  "https://s3-alpha-sig.figma.com/img/2485/8e3e/f7931c4b42f319cdb50e57e77b914122?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=b4Tj1Bnxor1bEYv6DxKmq5i9MHz9ioA1FWpculkGDqd3u2AI7U-hSK61mKvG-njISbbTEoMzEEJ6X~lLjOZqYv76ldT3uEJMnRZj5sHtGroGaSo8yCTCTMIk8UGxD8u9Zj79bwefgo2Jr1xjlBbOPig19IGhvIA6TaNCUu-BpWmVh~hqrY7rja2IRi~NNboxviX3kBY7tFUKtylLEsvPLVrbZPrLCeZ1uB~GnZmXIJt6AHEeGFuvRTkShva3aw7KflL8oquzepBKqh4T5bnr1O9lCi1y8QLNckZwdRf1sOWln1fbyVDfN2NqDHeUzEThuUH6R98YE72fCVKMSoTR-Q__",
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            child: const Text("Follow")),
                        const SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              color: Colors.white60,
                            )),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.shuffle,
                              color: Colors.white70,
                            )),
                        const CircleAvatar(
                          backgroundColor: Colors.green,
                          child: PlayPauseIcon(),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                MusicAndMerchTabBar(
                )
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: Text('Popular',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
          ),),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) => AspectRatio(
              aspectRatio: 16 / 4,
              child: Column(
                children: [
                  Songs(number: index, imageAddress: imageUrls[index], name: names[index], howManyTimesPlayed: theNumberOfPlayed[index],),
                ],
              )
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedIconTheme: const IconThemeData(size: 30, color: Colors.grey),
          selectedIconTheme: const IconThemeData(color: Colors.white,size: 30),
          selectedLabelStyle: const TextStyle(color: Colors.white),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            bottomIndex = value;
          });
        },currentIndex: bottomIndex,items: [
        BottomNavigationBarItem(icon: Icon(bottomIndex == 0 ? Icons.home : Icons.home_outlined),label: 'Home',),
        BottomNavigationBarItem(icon: Icon(bottomIndex == 1 ? Icons.search : Icons.search_outlined),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(bottomIndex == 2 ? Icons.library_books : Icons.library_books_outlined),label: 'Your Library'),
        BottomNavigationBarItem(icon: Icon(bottomIndex == 3 ? Icons.message : Icons.message_outlined),label: 'Activity'),
        BottomNavigationBarItem(icon: Icon(bottomIndex == 4 ? Icons.add_box : Icons.add),label: 'Activity'),

      ],),
    );
  }
}

class Songs extends StatelessWidget {
  final int number;
  final String imageAddress;
  final String name;
  final String howManyTimesPlayed;
  const Songs({super.key, required this.number, required this.imageAddress, required this.name, required this.howManyTimesPlayed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Row(
        children: [
          Text(
            "${number + 1}",style: const TextStyle(color: Colors.white),),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: 50,
            height: 50,
            child: Image.network(imageAddress,fit: BoxFit.cover,),
          ),
          Column(
            children: [
              Text(name,style: const TextStyle(color: Colors.white),),
              Text(howManyTimesPlayed,style: const TextStyle(color: Colors.grey),)
            ],
          ),
          const Spacer(),
          const Icon(Icons.more_horiz,color: Colors.grey,),
          const SizedBox(width: 10,)
        ],
      ),
    );
  }
}


// ///////////////////////////////////////////////////////////
class PlayPauseIcon extends StatefulWidget {
  const PlayPauseIcon({super.key});

  @override
  State<PlayPauseIcon> createState() => _PlayPauseIconState();
} //////////////

class _PlayPauseIconState extends State<PlayPauseIcon> {
  IconData playPauseIcon = Icons.play_arrow;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (playPauseIcon == Icons.play_arrow) {
          setState(() {
            playPauseIcon = Icons.pause;
          });
        } else {
          setState(() {
            playPauseIcon = Icons.play_arrow;
          });
        }
      },
      icon: Icon(
        playPauseIcon,
        color: Colors.black,
      ),
    );
  }
} //
// ///////////////////////////////////////////////////////////

// ////////////////////////////////////////////////////////////////////////
class MusicAndMerchTabBar extends StatefulWidget {


  MusicAndMerchTabBar({super.key});

  @override
  State<MusicAndMerchTabBar> createState() => _MusicAndMerchTabBarState();
}////////////////////
class _MusicAndMerchTabBarState extends State<MusicAndMerchTabBar> {
  Color musicColor = Colors.green;
  Color musicTextColor = Colors.white;

  Color merchColor = Colors.transparent;
  Color merchTextColor = Colors.grey;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: musicColor,))),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    musicColor = Colors.green;
                    musicTextColor = Colors.white;

                    merchColor = Colors.transparent;
                    merchTextColor = Colors.grey;
                  });
                },
                child: Text("Musics", style: TextStyle(color: musicTextColor),
                ),
              )),
        ),
        Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: merchColor,))),
            child: TextButton(
              onPressed: () {
                setState(() {
                  musicColor = Colors.transparent;
                  musicTextColor = Colors.grey;

                  merchColor = Colors.green;
                  merchTextColor = Colors.white;
                });
              },
              child: Text("Merch", style: TextStyle(color: merchTextColor),
              ),
            )),
      ],
    );
  }
}//
// ///////////////////////////////////////////////////////////////////////
