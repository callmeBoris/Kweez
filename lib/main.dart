import 'package:flutter/material.dart';

import './kweez.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = const [
    {
      'questionText': 'What is the brand of your laptop?',
      'answers': ['Apple', 'Samsung', 'Acer', 'Lenovo', 'HP']
    },
    {
      'questionText': 'What is the currency used in Rwanda?',
      'answers': ['Rwandan Franc', 'Rupee', 'Cedis', 'USD']
    },
    {
      'questionText': 'Who is the richest man in the world?',
      'answers': ['Georges Clooney', 'Boris Kayi', 'Jeff Bezos']
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
            backgroundColor: Colors.orange,
          ),
          body: this._questionIndex < this._questions.length
              ? Kweez(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerHandler: _answerHandler,
                )
              : Result()),
    );
  }
}
