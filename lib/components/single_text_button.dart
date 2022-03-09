import 'package:flutter/material.dart';

class SingleTextButton extends StatelessWidget {
  SingleTextButton({
    required this.buttonTitle,
    required this.radius,
    required this.singleFunctionCall,
  });
  final String buttonTitle;
  final BorderRadius radius;
  final void Function()? singleFunctionCall;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
          elevation: 10,
          shadowColor: Colors.blueGrey,
        ),
        onPressed: singleFunctionCall,
        child: Container(
          padding:
          const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 5),
          decoration:
          BoxDecoration(color: Colors.blueGrey[800], borderRadius: radius),
          child: Column(
            children: [
              Row(
                children: [
                  //Text
                  Expanded(
                    child: Text(
                      buttonTitle,
                      style:
                      const TextStyle(fontSize: 18, color: Colors.white60),
                    ),
                  ),
                  //Icon
                  const Icon(Icons.arrow_forward),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
