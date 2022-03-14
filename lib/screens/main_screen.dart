// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:instagram1/components/double_container_button.dart';
import 'package:instagram1/components/who_admires_me_button.dart';
import 'package:instagram1/components/user_stats_button.dart';
import 'package:instagram1/components/watch_stories_widget.dart';
import 'package:instagram1/components/live_data_widget.dart';

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
        leading: Icon(Icons.person),
        title: Center(child: const Text('Username')),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('3/13 13:55:00', style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey
                ),
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.refresh))
            ],
          )
        ],
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

