import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['yellow', 'green', 'black', 'brown']
      },
      {
        'questionText': 'what is your favorite animal?',
        'answers': ['rabbit', 'horse', 'cat', 'dog']
      },
      {
        'questionText': 'What\'s your car?',
        'answers': ['BMW', 'Porsche', 'Mercedes']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My first App',
          ),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'].toString()),
            (questions[_questionIndex]['answers'] as List<String>).map((answers) {
              return Answer(answers);
            })
          ],
        ),
      ),
    );
  }
}
