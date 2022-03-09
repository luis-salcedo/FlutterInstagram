// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart' as SlidingText;

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi'),
      ),
      body: SafeArea(
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
                  const WhoAdmiresMeWidget(
                    widgetText: 'Who Admires Me',
                    widgetSecondText: 'Find out who\'s interested in me',
                    widgetIcon: Icons.person,
                    widgetStats: '36',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Live moving user Data
                  LiveDataWidget(),
                  const TwoContainerWidget(
                    widgetText: 'Lost Followers',
                    widgetIcon: Icons.abc,
                    widgetStat: 'Stats',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TwoContainerWidget(
                    widgetText: 'Not Following Me Back',
                    widgetIcon: Icons.abc,
                    widgetStat: 'Stats',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TwoContainerWidget(
                    widgetText: 'Mutual',
                    widgetIcon: Icons.abc,
                    widgetStat: 'Stats',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TwoContainerWidget(
                    widgetText: 'Story Viewers',
                    widgetIcon: Icons.abc,
                    widgetStat: 'Stats',
                  ),
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
  });
  final String widgetText;
  final String widgetSecondText;
  final IconData widgetIcon;
  final String widgetStats;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // who admires me 1.icon 2.text 3.stats
      child: TextButton(
        style: TextButton.styleFrom(
            //elevation: MaterialStateProperty.all(20),
            padding: const EdgeInsets.only(right: 5),
            elevation: 20,
            primary: Colors.black),
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    widgetIcon,
                    color: Colors.black,
                    size: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    //Start Text from left
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        widgetText,
                        textAlign: TextAlign.left,
                        style: const TextStyle(), //Style text
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widgetSecondText,
                        textAlign: TextAlign.left,
                        style: const TextStyle(),
                      ),
                      //Text(widgetSecondText),
                    ],
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Text(widgetStats)
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(15),
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
    return Expanded(
      child: Column(
        children: const [
          Text('Watch Stories'),
          //profile icon
          Icon(Icons.person), //Should be scrollable list
        ],
      ),
    );
  }
}

class TwoContainerWidget extends StatelessWidget {
  const TwoContainerWidget({
    required this.widgetText,
    required this.widgetIcon,
    required this.widgetStat,
  });
  final String widgetText;
  final IconData widgetIcon;
  final String widgetStat;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // New Followers  + Lost Followers Container
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.abc),
                      Text('String'),
                      Text('Stat'),
                    ],
                  ),
                  const Text('New Followers'),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          //Second Container
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                  //elevation: MaterialStateProperty.all(20),
                  padding: const EdgeInsets.only(right: 5),
                  elevation: 20,
                  primary: Colors.black),
              onPressed: () {},
              child: Container(
                //padding: const EdgeInsets.all(10),
                //margin: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.abc),
                        Text('String'),
                        Text('Stat'),
                      ],
                    ),
                    const Text('New Followers'),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
