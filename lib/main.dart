import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var _questions = [
    {
      'questionText': 'Who is the fastest man alive?',
      'answers': [
        {'text': 'Killyan Mbappe', 'score': 0},
        {'text': 'Usain Bolt', 'score': 10},
        {'text': 'Cristiano Ronaldo', 'score': 0}
      ]
    },
    {
      'questionText': 'Who is the richest man alive?',
      'answers': [
        {'text': 'Tony Stark', 'score': 0},
        {'text': 'Bill Gates', 'score': 0},
        {'text': 'Jeff Bezos', 'score': 10},
        {'text': 'Aliko Dangote', 'score': 0}
      ]
    },
    {
      'questionText': 'Who is most awarded football player?',
      'answers': [
        {'text': 'Killyan Mbappe', 'score': 0},
        {'text': 'Lionel Messi', 'score': 0},
        {'text': 'Dani Alves', 'score': 10},
        {'text': 'Cristiano Ronaldo', 'score': 0},
        {'text': 'Neymar Jr.', 'score': 0}
      ]
    },
  ];

  int _questionIndex = 0;
  int _finalScore = 0;

  _answerhandler(int score) {
    setState(() {
      this._questionIndex += 1;
    });
    this._finalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kweez'),
        ),
        body: this._questionIndex < this._questions.length
            ? Column(
                children: <Widget>[
                  Question(
                      questionText: _questions[_questionIndex]['questionText']),
                  ...(_questions[_questionIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) => Answer(
                            answerText: answer['text'],
                            answerHandler: () =>
                                _answerhandler(answer['score']),
                          ))
                ],
              )
            : Center(
                child: Text(
                  'Done!\n your score: ${this._finalScore}',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
      ),
    );
  }
}
