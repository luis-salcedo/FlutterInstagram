import 'package:flutter/material.dart';

class TwoContainerWidget extends StatelessWidget {
  const TwoContainerWidget({
    required this.leftWidgetUserData,
    required this.rightWidgetUserData,
    required this.leftWidgetCallBack,
    required this.rightWidgetCallBack,
    required this.leftWidgetTitle,
    required this.rightWidgetTitle,
    required this.leftWidgetIcon,
    required this.rightWidgetIcon,
  });
  final String? leftWidgetUserData;
  final String? rightWidgetUserData;
  final Function()? leftWidgetCallBack;
  final Function()? rightWidgetCallBack;
  final String? leftWidgetTitle;
  final String? rightWidgetTitle;
  final IconData leftWidgetIcon;
  final IconData rightWidgetIcon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // New Followers  + Lost Followers Container
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
              ),
              onPressed: leftWidgetCallBack,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 40),
                //margin: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(leftWidgetIcon, size: 40,),
                        const SizedBox(width: 5,),
                        Text(leftWidgetUserData!,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),),
                      ],
                    ),
                    Text(leftWidgetTitle!,
                      textScaleFactor: 0.8,
                      style: const TextStyle(
                        overflow: TextOverflow.visible,
                        color: Colors.grey,
                        //fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //Second Container
          const SizedBox(width: 15,),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
              ),
              onPressed: rightWidgetCallBack,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 40),
                //margin: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(rightWidgetIcon, size: 40,),
                        const SizedBox(width: 5,),
                        Text(rightWidgetUserData!,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),),
                      ],
                    ),
                    Text(rightWidgetTitle!,
                      textScaleFactor: 0.8,
                      style: const TextStyle(
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
