import 'package:flutter/material.dart';

void main() {
  runApp(PerguntasApp());
}

class PerguntasApp extends StatelessWidget {
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
                onPressed: null,
                child: Text('Resposta 1'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Resposta 2'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Resposta 3'),
              ),
            ],
          )),
    );
  }
}
