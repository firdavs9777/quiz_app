import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(width: double.infinity, margin: EdgeInsets.all(10.0), child: Text(questionText, style: TextStyle(fontSize: 22,color: Colors.black,),textAlign: TextAlign.center,)),
    );
  }
}
