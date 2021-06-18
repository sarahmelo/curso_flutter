import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _questionSelected = 0;

  final _questions = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Pedro', 'Leo']
    }
  ];

  void _responder() {
    if (ifQuestionSelected) {
      setState(() {
        _questionSelected++;
      });
      print(_questionSelected);
    }
  }

  bool get ifQuestionSelected {
    return _questionSelected < _questions.length;
  }

  Widget build(BuildContext context) {
    //Armazena em uma lista : a Pergunta(questions)com seu id atual(_questionSelected)
    var question = _questions[_questionSelected]['respostas'] as List<String>;
    List<String> answer = ifQuestionSelected ? question : [];

    // for (String textoResp in respostas ) {
    //   widgets.add(Answer(textoResp, _responder));
    // }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('questions'),
      ),
      body: ifQuestionSelected
          ? Column(children: [
              Question(_questions[_questionSelected]['texto']),
              ...answer.map((texto) => Answer(texto, _responder)).toList()
            ])
          : null,
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
