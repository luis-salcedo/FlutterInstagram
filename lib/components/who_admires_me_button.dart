import 'package:flutter/material.dart';

class WhoAdmiresMeWidget extends StatelessWidget {
  const WhoAdmiresMeWidget({
    required this.widgetText,
    required this.widgetSecondText,
    required this.widgetIcon,
    required this.widgetStats,
    required this.widgetFunction
  });
  final String widgetText;
  final String widgetSecondText;
  final IconData widgetIcon;
  final String widgetStats;
  final Function()? widgetFunction;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // who admires me 1.icon 2.text 3.stats
      child: TextButton(
        style: TextButton.styleFrom(
          //elevation: MaterialStateProperty.all(20),
            padding: const EdgeInsets.only(right: 0),
            elevation: 20,
            primary: Colors.black),
        onPressed: widgetFunction,
        child: Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 40),
          //margin: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Icon(
                      widgetIcon,
                      color: Colors.blue,
                      size: 50,
                    ),
                  ),
                  /*Icon(
                    widgetIcon,
                    color: Colors.blue,
                    size: 50,
                  ),*/
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      //Start Text from left
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          widgetText,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ), //Style text
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widgetSecondText,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(widgetStats,
                    style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.white
                    ),)
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.blueGrey[800],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}