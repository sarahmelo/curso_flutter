import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _questionSelected = 0;

  final _questions = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Branco', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'nota': 10},
        {'texto': 'Cobra', 'nota': 5},
        {'texto': 'Elefante', 'nota': 2},
        {'texto': 'Leão', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': [
        {'texto': 'Leo', 'nota': 10},
        {'texto': 'Maria', 'nota': 5},
        {'texto': 'João', 'nota': 4},
        {'texto': 'Pedro', 'nota': 1},
      ]
    }
  ];

  void _answerFn() {
    if (ifQuestionSelected) {
      setState(() {
        _questionSelected++;
      });
    }
  }

  bool get ifQuestionSelected {
    return _questionSelected < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    //Armazena em uma lista : a Pergunta(questions)com seu id atual(_questionSelected)
    // Object? question = _questions[_questionSelected]['respostas'];
    // answer as List<String>;

    // for (String textoResp in respostas ) {
    //   widgets.add(Answer(textoResp, answerFn));
    // }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('questions'),
            ),
            body: ifQuestionSelected
                ? Quiz(
                    questions: _questions,
                    questionSelected: _questionSelected,
                    answerFn: _answerFn)
                : Result()));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
