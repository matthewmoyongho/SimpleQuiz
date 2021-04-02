import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Function reset;
  final int result;
  Result(this.result, this.reset);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("You have finished your quiz!",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
          SizedBox(height: 20,),
          Text("You answered $result questions correctly",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: reset, child: Text("Restart Quiz"))
        ],
      ),
    );
  }
}
