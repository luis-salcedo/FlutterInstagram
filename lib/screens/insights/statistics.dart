import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistics',
          textAlign: TextAlign.center,
          style: TextStyle(

        ),),
      ),
      body: Column(
        children: [
          Text('This is the statistics page'),
          Text('King Luis'),
        ],
      ),
    );
  }
}
