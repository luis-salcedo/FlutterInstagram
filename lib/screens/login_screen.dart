import 'package:flutter/material.dart';
import 'package:instagram1/full_api.dart';
import 'package:instagram1/screens/main_screen.dart';
import 'package:instagram1/screens/home_screen.dart';
import 'package:instagram1/networking/facebook_api.dart';
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    String username = '_hidden_lies_';
    double image_opacity = 1;
    return Scaffold(
      //backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: Text('Login Screen'),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  //color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: TextField(
                cursorHeight: 25,
                style: const TextStyle(color: Colors.blueGrey),
                decoration:  const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  label: Text('Username', style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                onChanged: (value) {
                  username = value;
                },
                onTap: (){
                  setState(() {
                    image_opacity = 0.1;
                  });
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: TextButton(
                onPressed: (){
                  //RefreshProgressIndicator.defaultStrokeWidth;
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomeScreen(userName: username,);
                  }));

                },
                child: const Text('Testing Button',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0
                  ),),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.deepPurple[800],
                  borderRadius: const BorderRadius.all(Radius.circular(10),
                  )
              ),
              child: TextButton(
                onPressed: (){
                  //RefreshProgressIndicator.defaultStrokeWidth;
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomeScreen(userName: username,);
                  }));

                },
                child: const Text('Instagram Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: const BorderRadius.all(Radius.circular(10),
                  )
              ),
              child: TextButton(
                onPressed: (){
                  //RefreshProgressIndicator.defaultStrokeWidth;
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return FullFacebookApi();
                  }));

                },
                child: const Text('Facebook Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    ),
      ),
    ]),
    );
  }
}
