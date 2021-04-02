import 'package:flutter/material.dart';

class Answer extends StatelessWidget {


  final Function buttonPressed;
  final String options;
  Answer(this.buttonPressed, this.options);

  @override

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     margin: EdgeInsets.all(5),
     color: Colors.blue,
     child: TextButton(onPressed: buttonPressed,
        child: Text(options,
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 14),),
      ),
    );
  }
}
