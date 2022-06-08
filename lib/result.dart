import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetFunc;
  Result(this.resultScore,this.resetFunc);
  String get resultPhrase{
    String resultText;
    if(resultScore <= 8)
      {
        resultText  = 'You are not bad';
      }
    else if(resultScore<=12)
      {
        resultText = 'Good Boy!';
      }
    else if(resultScore<=15)
    {
      resultText = 'Awesome Bpy';
    }
    else
      {
        resultText  = 'Good Job';
      }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children: [
          Text(resultPhrase,style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          FlatButton(child: Text('Restart Quiz!'),textColor:Colors.blue,onPressed:resetFunc)
        ],
      )
    );
  }
}
