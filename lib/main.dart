import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'whats\'s your favorite color?',
      'whats\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('ans1'),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('ans2'),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('ans3'),
            ),
          ],
        ),
      ),
    );
  }
}
