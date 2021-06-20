import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionSelected;
  final void Function() answerFn;

  Quiz({
    required this.questions,
    required this.questionSelected,
    required this.answerFn,
  });

  bool get ifQuestionSelected {
    return questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answer = (ifQuestionSelected
            ? questions[questionSelected]['respostas'] as List<String>
            : [])
        .cast<Map<String, Object>>();
    return Column(children: [
      Question(questions[questionSelected]['texto']),
      ...answer.map((resp) => Answer(resp, answerFn)).toList()
    ]);
  }
}
