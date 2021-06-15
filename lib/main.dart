import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

@override
class PerguntaApp extends StatelessWidget {
  var perguntaSeleciodana = 0;

  responder() {
    perguntaSeleciodana++;
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
          Text(perguntas[perguntaSeleciodana]),
          ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
          ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
          ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
        ],
      ),
    ));
  }
}
