import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selcetHandler;
  final String answer;
  Answer(this.selcetHandler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blueAccent,
        child: Text(answer),
        onPressed: selcetHandler,
      ),
    );
  }
}
