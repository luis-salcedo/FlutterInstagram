import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart' as SlidingText;

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
