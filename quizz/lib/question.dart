import 'package:flutter/material.dart';
import './answer.dart';

class Questions extends StatelessWidget {
  final qna = [
    {
      'question': 'Do you like apples ? 🍎',
      'answers': ['Yes', 'No']
    },
    {
      'question': 'Do you like skiing ? ⛷',
      'answers': ['Yes', 'No']
    },
    {
      'question': 'What\'s your favorite animal ? 🐕',
      'answers': ['Cat 🐈', 'Dog 🐕', 'Panda 🐼', 'Cow 🐄']
    },
  ];

  final questionIndex;
  final Function callback;
  Questions(this.callback, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (this.questionIndex != this.qna.length) ...[
              Text(
                qna.elementAt(questionIndex)['question'] as String,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              ...(qna.elementAt(questionIndex)['answers'] as List<String>)
                  .map((answer) {
                return Answer(answer, callback);
              }).toList()
            ],
          ],
        ));
  }
}
