import 'package:flutter/material.dart';

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

