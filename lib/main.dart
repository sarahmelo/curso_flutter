import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';
import 'buttons.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSeleciodana = 0;

  void _responder() {
    setState(() {
      _perguntaSeleciodana++;
    });
    print(_perguntaSeleciodana);
  }

  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
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

    List<Widget> respostas = [];

    for (String textoResp
        in perguntas[_perguntaSeleciodana].cast()['respostas']) {
      respostas.add(Buttons(textoResp, _responder));
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          Question(perguntas[_perguntaSeleciodana]['texto']),
          ...respostas
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
