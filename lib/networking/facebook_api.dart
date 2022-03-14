import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter/material.dart';

class FacebookLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Center(
              child: Text('Networking Testing'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (() async {
                final LoginResult result = await FacebookAuth.instance
                    .login(); // by default we request the email and the public profile
                // or FacebookAuth.i.login()
                if (result.status == LoginStatus.success) {
                  // you are logged
                  final AccessToken accessToken = result.accessToken!;

                } else {
                  print(result.status);
                  print(result.message);
                }
              }),
              child: const Text('Log in'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (() async {
                await FacebookAuth.instance
                    .logOut();
              }),
              child: const Text('Logout'),
            ),
          ),
        ],
      ),
    );
  }
}

class Mhmm extends StatelessWidget {
  void login() async {}

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
/*

*/