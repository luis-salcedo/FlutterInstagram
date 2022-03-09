import 'package:flutter/material.dart';

class DoubleTextButton extends StatelessWidget {
  DoubleTextButton({
    required this.primaryText,
    required this.secondaryText,
    required this.functionCall,
  });
  final String primaryText;
  final String secondaryText;
  final Function()? functionCall;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
          elevation: 10,
          shadowColor: Colors.blueGrey,
        ),
        onPressed: functionCall,
        child: Container(
          padding:
          const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 5),
          decoration: BoxDecoration(
              color: Colors.blueGrey[800],
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              //Primary Text
              Row(
                children: [
                  Expanded(
                    child: Column(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          primaryText,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: null,
                            fontSize: 18,
                          ),
                        ),
                        Text(secondaryText,
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ),
                  Column(
                    children: const[
                      Icon(
                        Icons.trending_up,
                        size: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}