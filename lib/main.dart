import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questiontext': 'What\'s favorite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'white', 'score': 7},
        {'text': 'green', 'score': 5},
        {'text': 'yellow', 'score': 3},
      ],
    },
    {
      'questiontext': 'What\'s favorite animal?',
      'answers': [
        {'text': 'horse', 'score': 9},
        {'text': 'dog', 'score': 8},
        {'text': 'cow', 'score': 7},
        {'text': 'cat', 'score': 1},
      ],
    },
    {
      'questiontext': 'What\'s favorite season?',
      'answers': [
        {'text': 'winter', 'score': 1},
        {'text': 'fall', 'score': 4},
        {'text': 'spring', 'score': 5},
        {'text': 'summer', 'score': 7}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz()
  {
    setState(() {

      _questionIndex = 0;
      _totalScore = 0;
    }
    );
  }
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore,_resetQuiz)),
    );
  }
}
