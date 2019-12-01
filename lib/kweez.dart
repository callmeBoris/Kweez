import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Kweez extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerHandler;
  final int questionIndex;

  Kweez(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(this.questions[this.questionIndex]['questionText']),
        ...(this.questions[this.questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(this.answerHandler, answer);
        })
      ],
    );
  }
}
