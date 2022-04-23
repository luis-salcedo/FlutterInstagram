import 'package:flutter/material.dart';
import 'package:instagram1/full_api.dart';
// import 'package:instagram1/screens/main_screen.dart';
import 'package:instagram1/screens/home_screen.dart';
// import 'package:instagram1/networking/facebook_api.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    String username = ''; //_hidden_lies_
    String password = 'password';
    double image_opacity = 1;
    void checkUser() async {
      Uri userProfileURL =
          Uri.dataFromString('https://www.instagram.com/$username/?__a=1');
      final request = await http.get(userProfileURL);

      final decodeData = json.decode(request.body);

      if (decodeData.isEmpty) {
        print(".:: User Not Found ::.");
      }
    }

    return Scaffold(
      //backgroundColor: Colors.blueGrey[300],
      backgroundColor: Colors.white,
      body: CustomScrollView(
          cacheExtent: 20.0,
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(<Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      /* Header Text */
                      Container(
                        padding: const EdgeInsets.only(top: 40),
                        alignment: AlignmentDirectional.center,
                        child: Text('Instagram',
                            style: GoogleFonts.dancingScript(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 70,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      const SizedBox(
                        height: 65,
                      ),
                      /* Username Field */
                      LoginInputText(
                        type: username,
                        label: 'Phone number, username, or email',
                        isSecret: false,
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      /* Password Field */
                      LoginInputText(
                        type: password,
                        label: 'Password',
                        isSecret: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      /* Signin Button */
                      SignInButton(
                        username: username,
                        password: password,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[800],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            )),
                        child: TextButton(
                          onPressed: () {
                            //RefreshProgressIndicator.defaultStrokeWidth;
                            checkUser();
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeScreen(
                                userName: username,
                              );
                            }));
                          },
                          child: const Text(
                            'Instagram Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            )),
                        child: TextButton(
                          onPressed: () {
                            //RefreshProgressIndicator.defaultStrokeWidth;
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return FullFacebookApi();
                            }));
                          },
                          child: const Text(
                            'Facebook Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
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

class LoginInputText extends StatelessWidget {
  LoginInputText(
      {Key? key,
      required this.type,
      required this.label,
      required this.isSecret})
      : super(key: key);

  String type;
  String label;
  bool isSecret;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isSecret,
      cursorHeight: 25,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        label: Text(
          label,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        //Box design
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.grey),
        ),
      ),
      onChanged: (value) {
        type = value;
      },
    );
  }
}

class SignInButton extends StatelessWidget {
  SignInButton({Key? key, required this.username, required this.password})
      : super(key: key);
  String username;
  String password;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(20),
      // margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextButton(
        onPressed: () {
          //Check if username is valid and exists
          // RefreshProgressIndicator.defaultStrokeWidth;
          CircularProgressIndicator;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return HomeScreen(
                userName: username,
                password: password,
              );
            }),
          );
        },
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 23.0,
          ),
        ),
      ),
    );
  }
}
