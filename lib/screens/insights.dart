import 'package:flutter/material.dart';
import 'package:instagram1/components/single_text_button.dart';
import 'package:instagram1/components/double_text_button.dart';
import 'package:instagram1/screens/insights/statistics.dart';
//TO DO: Fix colors, add button destination
class Insights extends StatefulWidget {

  @override
  State<Insights> createState() => _InsightsState();
}

class _InsightsState extends State<Insights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Insisghts',
          style: TextStyle(),
        ),
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
                  Expanded(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.tv,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Analytics',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  DoubleTextButton(
                    functionCall: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Statistics();
                      }));
                    },
                    primaryText: 'Statistics',
                    secondaryText: "View this week's data report",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Media Insight',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SingleTextButton(
                    singleFunctionCall: (){},
                    buttonTitle: 'Most Popular',
                    radius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 1),
                  SingleTextButton(
                    singleFunctionCall: (){},
                    buttonTitle: 'Most Liked',
                    radius: const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  const SizedBox(height: 1),
                  SingleTextButton(
                    singleFunctionCall: (){},
                    buttonTitle: 'Most Commented',
                    radius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 15),
                  DoubleTextButton(
                    functionCall: (){},
                    primaryText: 'Story Insights',
                    secondaryText:
                        "Gain Insights into your stories in one step",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.panorama_fish_eye,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Discovery',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SingleTextButton(
                    singleFunctionCall: (){},
                    buttonTitle: 'People I liked lately',
                    radius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 1),
                  SingleTextButton(
                    singleFunctionCall: (){},
                    buttonTitle: 'Best Friends',
                    radius: const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  const SizedBox(height: 1),
                  SingleTextButton(
                    singleFunctionCall: (){},
                    buttonTitle: 'People I missed',
                    radius: const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  const SizedBox(height: 1),
                  SingleTextButton(
                    singleFunctionCall: (){},
                    buttonTitle: 'Secret Admirers',
                    radius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 1),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}


