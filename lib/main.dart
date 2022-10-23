import 'package:flutter/material.dart';

void main() {
  runApp(PerguntasApp());
}

class PerguntasAppState extends State<PerguntasApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print("Pergunta respondida!!!");
  }

  void Function() funcaoQueRetornaumaFuncao() {
    return () {
      print('Pergunta respondida');
    };
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita ?',
      'Qual é o seu animal favorito ?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: [
              Text(perguntas[perguntaSelecionada]),
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

class PerguntasApp extends StatefulWidget {
  PerguntasAppState createState() {
    return PerguntasAppState();
  }
}
