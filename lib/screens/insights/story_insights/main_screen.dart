import 'package:flutter/material.dart';
import 'package:instagram1/components/single_text_button.dart';
class StoryInsights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Story Insights'),
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
                    Row(
                      children: const[
                        Icon(
                          Icons.person_pin_rounded,
                          color: Colors.blue,
                          //size: 32.0,
                        ),
                        SizedBox(width: 15,),
                        Text('Story Viewers',
                          style: TextStyle(
                              fontSize: 20.0
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    SingleTextButton(
                      singleFunctionCall: (){},
                      buttonTitle: 'Top Viewers',
                      radius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                      ),
                    ),
                    const SizedBox(height: 1,),
                    SingleTextButton(
                      singleFunctionCall: (){},
                      buttonTitle: 'Least Viewers',
                      radius: const BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0)
                      ),
                    ),
                    const SizedBox(height: 1,),
                    SingleTextButton(
                      singleFunctionCall: (){},
                      buttonTitle: 'Viewers Not Following Me',
                      radius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: const[
                        Icon(
                          Icons.play_circle,
                          color: Colors.blue,
                          //size: 32.0,
                        ),
                        SizedBox(width: 15,),
                        Text('Story Insights',
                          style: TextStyle(
                              fontSize: 20.0
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    SingleTextButton(
                      singleFunctionCall: (){},
                      buttonTitle: 'Most Viewed Stories',
                      radius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                      ),
                    ),
                    const SizedBox(height: 1,),
                    SingleTextButton(
                      singleFunctionCall: (){},
                      buttonTitle: 'Least Viewed Stories',
                      radius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                      ),
                    ),
                  ],
                ),
              ),
              //bottomNavigationBar: BottomNavWidget(),
            ),
          ]),
    );
  }
}
