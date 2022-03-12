import 'package:flutter/material.dart';
import 'package:instagram_public_api/instagram_public_api.dart';


class InstagramTesting extends StatelessWidget {

  FlutterInsta insta = FlutterInsta();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Test Screen'),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () async{
                InstaProfileData user = await insta.getProfileData("_hidden_lies_");
                print('USERNAME: ${user.username}');
                print(user.profilePicURL);
                print(user.bio);
                print(user.externalURL);
                print(user.followers);
                print(user.following);
                print(user.isVerified);
                print(user.isPrivate);
                print(user.username);

              },
              child: Text('Click for something')),
        ],
      ),
    );
  }
}
