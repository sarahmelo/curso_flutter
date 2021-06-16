import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSeleciodana = 0;

  void _responder() {
    setState(() {
      perguntaSeleciodana++;
    });
    print(perguntaSeleciodana);
  }

  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual a su animal favorito?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          Question(perguntas[perguntaSeleciodana]),
          ElevatedButton(onPressed: _responder, child: Text('Resposta 1')),
          ElevatedButton(onPressed: _responder, child: Text('Resposta 2')),
          ElevatedButton(onPressed: _responder, child: Text('Resposta 3')),
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
