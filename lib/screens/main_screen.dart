// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart' as SlidingText;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final String userName = 'Luis';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, $userName'),
      ),
      body: CustomScrollView(
        cacheExtent: 20.0,
        shrinkWrap: true,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  const UserStatsWidget(
                    followers: '68',
                    followings: '382',
                    profilePicture: Icons.person,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Live moving user Data
                  LiveDataWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  WhoAdmiresMeWidget(
                    widgetFunction: (){},
                    widgetText: 'Who Admires Me',
                    widgetSecondText: 'Find out who\'s interested in me',
                    widgetIcon: Icons.person,
                    widgetStats: '36',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TwoContainerWidget(
                    leftWidgetTitle: 'New Followers',
                    leftWidgetUserData: '0',
                    leftWidgetIcon: Icons.person_add,
                    leftWidgetCallBack: (){},
                    rightWidgetTitle: 'Lost Followers',
                    rightWidgetUserData: '0',
                    rightWidgetIcon: Icons.person_remove,
                    rightWidgetCallBack: (){},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TwoContainerWidget(
                    leftWidgetTitle: 'Not Following Me Back',
                    leftWidgetUserData: '0',
                    leftWidgetIcon: Icons.person_off,
                    leftWidgetCallBack: (){},
                    rightWidgetTitle: "I'm Not Following Back",
                    rightWidgetUserData: '0',
                    rightWidgetIcon: Icons.person,
                    rightWidgetCallBack: (){},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TwoContainerWidget(
                    leftWidgetTitle: 'Mutual Following',
                    leftWidgetUserData: '0',
                    leftWidgetIcon: Icons.handshake,
                    leftWidgetCallBack: (){},
                    rightWidgetTitle: "Users I've Unfollowed",
                    rightWidgetUserData: '0',
                    rightWidgetIcon: Icons.person,
                    rightWidgetCallBack: (){},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TwoContainerWidget(
                    leftWidgetTitle: 'New Story Viewers',
                    leftWidgetUserData: '0',
                    leftWidgetIcon: Icons.handshake,
                    leftWidgetCallBack: (){},
                    rightWidgetTitle: 'Tracked Stories',
                    rightWidgetUserData: '0',
                    rightWidgetIcon: Icons.looks,
                    rightWidgetCallBack: (){},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TwoContainerWidget(
                    leftWidgetTitle: 'Deleted Comments',
                    leftWidgetUserData: '0',
                    leftWidgetIcon: Icons.comment,
                    leftWidgetCallBack: (){},
                    rightWidgetTitle: 'Deleted Likes',
                    rightWidgetUserData: '0',
                    rightWidgetIcon: Icons.heart_broken,
                    rightWidgetCallBack: (){},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Watch Stories',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                    ),
                  ),
                  // Stories
                  const SizedBox(height: 10,),
                  WatchStoriesWidget()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LiveDataWidget extends StatefulWidget {
  @override
  State<LiveDataWidget> createState() => _LiveDataWidgetState();
}

class _LiveDataWidgetState extends State<LiveDataWidget> {
  Map<String, int> liveProfileData = {
    'followers': 68,
    'followings': 382,
    'photos': 1,
    'videos': 0,
    'likesTotal': 36,
    'commentsTotal': 0,
    'comentsPerPhoto': 0,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      child: Column(
        children: [
          SizedBox(
            width: 490,
            height: 25,
            child: SlidingText.Marquee(
              text: 'Data',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              velocity: 30.0,
            ),
          ),
          SizedBox(
            width: 490,
            height: 25,
            child: SlidingText.Marquee(
              text: 'Data',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              velocity: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}

class WhoAdmiresMeWidget extends StatelessWidget {
  const WhoAdmiresMeWidget({
    required this.widgetText,
    required this.widgetSecondText,
    required this.widgetIcon,
    required this.widgetStats,
    required this.widgetFunction
  });
  final String widgetText;
  final String widgetSecondText;
  final IconData widgetIcon;
  final String widgetStats;
  final Function()? widgetFunction;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // who admires me 1.icon 2.text 3.stats
      child: TextButton(
        style: TextButton.styleFrom(
            //elevation: MaterialStateProperty.all(20),
            padding: const EdgeInsets.only(right: 0),
            elevation: 20,
            primary: Colors.black),
        onPressed: widgetFunction,
        child: Container(

          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 40),
          //margin: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Icon(
                      widgetIcon,
                      color: Colors.blue,
                      size: 50,
                    ),
                  ),
                  /*Icon(
                    widgetIcon,
                    color: Colors.blue,
                    size: 50,
                  ),*/
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      //Start Text from left
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          widgetText,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ), //Style text
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widgetSecondText,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(widgetStats,
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.white
                    ),)
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.blueGrey[800],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class UserStatsWidget extends StatelessWidget {
  const UserStatsWidget({
    required this.followers,
    required this.followings,
    required this.profilePicture,
  });

  final String followers;
  final String followings;
  final IconData? profilePicture;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black38,
        child: Column(children: [
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Column(
                //Followers + data
                children: [
                  Text(
                    followers,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green[700],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Followers',
                    style: TextStyle(
                      color: Color.fromARGB(255, 211, 211, 211),
                    ),
                  ),
                ],
              ),
              // Icon
              const SizedBox(
                width: 50,
              ),
              Icon(
                profilePicture,
                size: 60,
              ),
              const SizedBox(
                width: 50,
              ),
              Column(
                //Followings + data
                children: [
                  Text(
                    followings,
                    style: TextStyle(color: Colors.green[700], fontSize: 30),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Followings',
                    style: TextStyle(
                      color: Color.fromARGB(255, 211, 211, 211),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class WatchStoriesWidget extends StatelessWidget {
  const WatchStoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 20,
              child: Icon(Icons.person),),
            SizedBox(height: 5,),
            Text('Hello World', style: TextStyle(
              fontSize: 9,
              color: Colors.grey
              ),
            )
          ],
        )
      ],
    );
  }
}

class TwoContainerWidget extends StatelessWidget {
  const TwoContainerWidget({
    required this.leftWidgetUserData,
    required this.rightWidgetUserData,
    required this.leftWidgetCallBack,
    required this.rightWidgetCallBack,
    required this.leftWidgetTitle,
    required this.rightWidgetTitle,
    required this.leftWidgetIcon,
    required this.rightWidgetIcon,
  });
  final String? leftWidgetUserData;
  final String? rightWidgetUserData;
  final Function()? leftWidgetCallBack;
  final Function()? rightWidgetCallBack;
  final String? leftWidgetTitle;
  final String? rightWidgetTitle;
  final IconData leftWidgetIcon;
  final IconData rightWidgetIcon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // New Followers  + Lost Followers Container
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
              ),
              onPressed: leftWidgetCallBack,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 40),
                //margin: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(leftWidgetIcon, size: 40,),
                        const SizedBox(width: 5,),
                        Text(leftWidgetUserData!,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),),
                      ],
                    ),
                    Text(leftWidgetTitle!,
                      textScaleFactor: 0.8,
                      style: const TextStyle(
                          overflow: TextOverflow.visible,
                          color: Colors.grey,
                          //fontSize: 14,
                      ),
                    ),
                  ],
                ),

              ),
            ),
          ),
          //Second Container
          const SizedBox(width: 15,),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
              ),
              onPressed: rightWidgetCallBack,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 40),
                //margin: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(rightWidgetIcon, size: 40,),
                        const SizedBox(width: 5,),
                        Text(rightWidgetUserData!,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),),
                      ],
                    ),
                    Text(rightWidgetTitle!,
                      textScaleFactor: 0.8,
                      style: const TextStyle(
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class mmm{
  Widget test(){
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            //Here goes /* prfile pic and stats
            child: Column(
              children: [
                const UserStatsWidget(
                  followers: '68',
                  followings: '382',
                  profilePicture: Icons.person,
                ),
                const SizedBox(
                  height: 10,
                ),
                //Live moving user Data
                LiveDataWidget(),
                const SizedBox(
                  height: 10,
                ),
                WhoAdmiresMeWidget(
                  widgetFunction: (){},
                  widgetText: 'Who Admires Me',
                  widgetSecondText: 'Find out who\'s interested in me',
                  widgetIcon: Icons.person,
                  widgetStats: '36',
                ),
                const SizedBox(
                  height: 10,
                ),
                /*const TwoContainerWidget(
                  widgetText: 'Lost Followers',
                  widgetIcon: Icons.abc,
                  widgetStat: 'Stats',
                ),*/

                // Watch Stories
                const SizedBox(
                  height: 10,
                ),
                const WatchStoriesWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
