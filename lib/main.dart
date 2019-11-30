import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  var _questions = [
    {
      'questionText': 'What is the currency used in Rwanda?',
      'answers': ['Rwandan Franc', 'USD', 'Naira', 'Euro'],
    },
    {
      'questionText': 'What is the best Football club in the world?',
      'answers': ['Paris Saint Germain', 'Real Madrid', 'TP Mazembe'],
    },
    {
      'questionText': 'Who is the richest man in the world?',
      'answers': ['Boris Kayi', 'Dangote', 'Jeff Bezos', 'Bill Gate'],
    },
  ];

  var _questionIndex = 0;
  _answerHandler() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Kweez'),
      ),
      body: Column(
        children: <Widget>[
          Question(this._questions[this._questionIndex]['questionText']),
          ...(this._questions[this._questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(answer, this._answerHandler);
          }),
        ],
      ),
    ));
  }
}
