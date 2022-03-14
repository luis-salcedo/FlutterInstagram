import 'package:flutter/material.dart';

class WatchStoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 20,
              child: Icon(Icons.person),),
            SizedBox(height: 5,),
            Text('Hello World', style: TextStyle(
                fontSize: 9,
                color: Colors.grey
            ),
            )
          ],
        )
      ],
    );
  }
}