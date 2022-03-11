// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart' as SlidingText;
import 'package:instagram1/components/double_container_button.dart';
import 'package:instagram1/components/who_admires_me_button.dart';
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
                    leftWidgetIcon: Icons.person_pin_sharp,
                    leftWidgetCallBack: (){},
                    rightWidgetTitle: 'Tracked Stories',
                    rightWidgetUserData: '0',
                    rightWidgetIcon: Icons.remove_red_eye_rounded,
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

