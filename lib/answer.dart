import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function answerQuestion;
  Answer(this.answerText, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(this.answerText),
        onPressed: this.answerQuestion,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
