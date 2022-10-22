import 'package:flutter/material.dart';

void main() {
  runApp(PerguntasApp());
}

class PerguntasApp extends StatelessWidget {
  void responder() {
    print("Pergunta respondida!!!");
  }

  void Function() funcaoQueRetornaumaFuncao() {
    return () {
      print('Pergunta respondida');
    };
  }

  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita ?',
      'Qual é o seu animal favorito ?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: Column(
            children: [
              Text(perguntas[0]),
              ElevatedButton(
                onPressed: responder,
                child: Text('Resposta 1'),
              ),
              ElevatedButton(
                onPressed: responder,
                child: Text('Resposta 2'),
              ),
              ElevatedButton(
                onPressed: responder,
                child: Text('Resposta 3'),
              ),
              ElevatedButton(
                onPressed: funcaoQueRetornaumaFuncao(),
                child: Text('Resposta 4'),
              ),
            ],
          )),
    );
  }
}
