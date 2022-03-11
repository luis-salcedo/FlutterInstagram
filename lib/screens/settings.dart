import 'package:flutter/material.dart';
import '../components/settings_button.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
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
                    SettingsButton(
                      widgetIcon: Icons.rocket,
                      singleFunctionCall: (){},
                      buttonTitle: 'Linktree - One Link To All Content ',
                      radius: const BorderRadius.all(Radius.circular(10)
                      ),
                    ),
                    const SizedBox(height: 15,),
                    SettingsButton(
                      widgetIcon: Icons.star,
                      singleFunctionCall: (){},
                      buttonTitle: 'Like The App? Review us!',
                      radius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 1,),
                    SettingsButton(
                      widgetIcon: Icons.bug_report,
                      singleFunctionCall: (){},
                      buttonTitle: 'Bug Reports or Suggestions',
                      radius: const BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    const SizedBox(height: 1,),
                    SettingsButton(
                      widgetIcon: Icons.reset_tv,
                      singleFunctionCall: (){},
                      buttonTitle: 'Reset Data',
                      radius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    SettingsButton(
                      widgetIcon: Icons.loop,
                      singleFunctionCall: (){},
                      buttonTitle: 'Restore Purchases',
                      radius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 1,),
                    SettingsButton(
                      widgetIcon: Icons.question_answer,
                      singleFunctionCall: (){},
                      buttonTitle: 'About Subscriptions',
                      radius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    SettingsButton(
                      widgetIcon: Icons.newspaper_sharp,
                      singleFunctionCall: (){},
                      buttonTitle: 'Terms of Use',
                      radius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 1,),
                    SettingsButton(
                      widgetIcon: Icons.privacy_tip,
                      singleFunctionCall: (){},
                      buttonTitle: 'Privacy Policy',
                      radius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    /*const SizedBox(height: 15,),
                    SettingsButton(
                      widgetIcon: Icons.privacy_tip,
                      singleFunctionCall: (){},
                      buttonTitle: 'Dark Mode',
                      radius: const BorderRadius.all(
                        Radius.circular(10)
                      ),
                    ),*/
                    const SizedBox(height: 15,),
                    const Center(
                      child: Text('Version 1.8.0',
                        style: TextStyle(
                            color: Colors.white60
                        ),),
                    ),
                    const SizedBox(height: 15,),

                    TextButton(
                        style: TextButton.styleFrom(
                          
                        ),
                        onPressed: (){},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[800],
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Log out',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white60
                            ),),
                          ),
                        )
                    )

                  ],
                ),
              ),
              //bottomNavigationBar: BottomNavWidget(),
            ),
          ]),
      //bottomNavigationBar: BottomNavWidget(),
    );
  }
}

