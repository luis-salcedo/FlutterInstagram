import 'package:flutter/material.dart';
import 'package:instagram1/components/bottom_nav.dart';
import 'package:instagram1/components/single_text_button.dart';
import 'package:instagram1/components/double_text_button.dart';
class Engagement extends StatefulWidget {
  Engagement({Key? key}) : super(key: key);

  @override
  State<Engagement> createState() => _EngagementState();
}

class _EngagementState extends State<Engagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Engagement'),
      ),
      //bottomNavigationBar: BottomNavWidget(),
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
                  Icons.people,
                  color: Colors.green,
                  size: 32.0,
                ),
                SizedBox(width: 15,),
                Text('My Best Followers',
                  style: TextStyle(
                    fontSize: 22.0
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            SingleTextButton(
              singleFunctionCall: (){},
                buttonTitle: 'Most Likes',
                radius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
                ),
            ),
            const SizedBox(height: 1,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: 'Most Comments',
              radius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0)
              ),
            ),
            const SizedBox(height: 1,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: 'Most Comments and Likes',
              radius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              children: const[
                Icon(
                  Icons.people,
                  color: Colors.green,
                  size: 32.0,
                ),
                SizedBox(width: 15,),
                Text('Missed Connections',
                  style: TextStyle(
                      fontSize: 22.0
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: "Users I Engaged, But Didn't Follow",
              radius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
              ),
            ),
            const SizedBox(height: 1,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: "Users Liked Me, but Didn't Follow",
              radius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
              // Ghost Followers
            ),
            const SizedBox(height: 15,),
            Row(
              children: const[
                Icon(
                  Icons.people,
                  color: Colors.green,
                  size: 32.0,
                ),
                SizedBox(width: 15,),
                Text('Ghost Followers',
                  style: TextStyle(
                      fontSize: 22.0
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: 'Least Likes Given',
              radius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
              ),
            ),
            const SizedBox(height: 1,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: 'Least Comments Left',
              radius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0)
              ),
            ),
            const SizedBox(height: 1,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: 'No Comments and Likes',
              radius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              children: const[
                Icon(
                  Icons.lock_clock,
                  color: Colors.green,
                  size: 32.0,
                ),
                SizedBox(width: 15,),
                Text('History',
                  style: TextStyle(
                      fontSize: 22.0
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: 'Earliest Followers',
              radius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
              ),
            ),
            const SizedBox(height: 1,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: 'Newest Followers',
              radius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0)
              ),
            ),
            const SizedBox(height: 1,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: 'Lost Followers',
              radius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0)
              ),
            ),
            const SizedBox(height: 1,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: "Users I've Unfollowed",
              radius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              children: const[
                Icon(
                  Icons.map,
                  color: Colors.green,
                  size: 32.0,
                ),
                SizedBox(width: 15,),
                Text('Distance',
                  style: TextStyle(
                      fontSize: 22.0
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            SingleTextButton(
              singleFunctionCall: (){},
              buttonTitle: "Users I've Unfollowed",
              radius: const BorderRadius.all(Radius.circular(10)),
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
