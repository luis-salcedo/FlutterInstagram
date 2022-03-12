// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart' as SlidingText;
import 'package:instagram1/components/double_container_button.dart';
import 'package:instagram1/components/who_admires_me_button.dart';

class MainScreen extends StatefulWidget {
  MainScreen({
    this.userName,
    this.userFollowers,
    this.userFollowing,
    required this.userProfilePicUrl,
  });

  String? userName;
  String? userFollowers;
  String? userFollowing;
  String userProfilePicUrl;
  String? photos = '';
  String? videos = '';
  String? likes = '';
  String? comments = '';
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  String? dropDownValue = '';
  var dropdownItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*Expanded(
                child: DropdownButton(
                  //alignment: AlignmentDirectional.center,
                    value: dropDownValue,
                    // Array list of items
                    items: dropdownItems.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? value){
                      setState(() {
                          dropDownValue = value!;
                      });
                    }),
              ),*/
              IconButton(onPressed: (){}, icon: const Icon(Icons.refresh))
            ],
          ),
        )
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
                  UserStatsWidget(
                    followers: widget.userFollowers!,
                    followings: widget.userFollowing!,
                    profilePicture: widget.userProfilePicUrl,

                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Live moving user Data
                  LiveDataWidget(
                    followers: widget.userFollowers,
                    following: widget.userFollowing,
                    photos: widget.photos,
                    videos: widget.videos,
                    likes: widget.likes,
                    comments: widget.comments,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  WhoAdmiresMeWidget(
                    widgetFunction: (){},
                    widgetText: 'Who Admires Me',
                    widgetSecondText: 'Find out who\'s interested in me',
                    widgetIcon: Icons.person,
                    widgetStats: '0',
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

class LiveDataWidget extends StatelessWidget {
  LiveDataWidget({
    required this.followers,
    required this.following,
    required this.photos,
    required this.videos,
    required this.likes,
    required this.comments,

  });
  String? followers;
  String? following;
  String? photos;
  String? videos;
  String? likes;
  String? comments;

  @override
  Widget build(BuildContext context) {
    Map<String, String> liveProfileData = {
    'Followers': followers!,
    'Followings': following!,
    'Photos': photos!,
    'Videos': videos!,
    'Likes': likes!,
    'Comments': comments!,
    };
    return Container(
      color: Colors.black38,
      child: Column(
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 490,
            height: 25,
            child: SlidingText.Marquee(
              pauseAfterRound: const Duration(seconds: 0),
              text:
                  ' ${liveProfileData.keys.elementAt(0)} ${liveProfileData.values.elementAt(0)} '
                  ' ${liveProfileData.keys.elementAt(1)} ${liveProfileData.values.elementAt(1)} '
                  ' ${liveProfileData.keys.elementAt(2)} ${liveProfileData.values.elementAt(2)} '
                  ' ${liveProfileData.keys.elementAt(3)} ${liveProfileData.values.elementAt(3)} '
                  ' ${liveProfileData.keys.elementAt(4)} ${liveProfileData.values.elementAt(4)} '
                      ' ${liveProfileData.keys.elementAt(5)} ${liveProfileData.values.elementAt(5)} '
              ,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                wordSpacing: 10,

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
  final String profilePicture;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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

            Expanded(
              child: CircleAvatar(
                radius: 50,
                //backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.network(
                    profilePicture,
                    width: 100,
                    fit: BoxFit.cover,),
                  ),
                ),
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

