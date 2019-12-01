import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(
          this.answerText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: this.answerHandler,
        color: Colors.orange,
      ),
    );
  }
}
