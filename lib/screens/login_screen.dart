import 'package:flutter/material.dart';
import 'package:instagram1/screens/main_screen.dart';
import 'package:instagram1/screens/home_screen.dart';
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
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          /*image: DecorationImage(
          image: AssetImage('assets/SocialLife.jpg'),
          opacity: image_opacity,
          fit: BoxFit.cover,
          ),*/
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                //color: Colors.blueGrey,
                child: TextField(
                  style: const TextStyle(color: Colors.blueGrey),
                  decoration:  const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    label: Text('Username'),

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
              TextButton(
                  onPressed: (){
                    //RefreshProgressIndicator.defaultStrokeWidth;
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return HomeScreen(userName: username,);
                   }));

                  },
                  child: Text('Go There'),)
            ],
          ),
        ),
      ),
    );
  }
}
