import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
              ? Column(
                  children: <Widget>[
                    Question(
                        this._questions[this._questionIndex]['questionText']),
                    ...(this._questions[this._questionIndex]['answers']
                            as List<String>)
                        .map((answer) {
                      return Answer(this._answerHandler, answer);
                    })
                  ],
                )
              : Center(
                  child: Text('Awesome', style: TextStyle(fontSize: 20, color: Colors.orange)),
                )),
    );
  }
}
