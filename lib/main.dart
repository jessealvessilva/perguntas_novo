import 'package:flutter/material.dart';
import 'package:perguntas_novo/questao.dart';
import './questao.dart';
import './resposta.dart';

void main() {
  runApp(PerguntasApp());
}

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
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
              Questao(texto: perguntas[_perguntaSelecionada]),
              Resposta(texto: 'Resposta 1'),
              ElevatedButton(
                onPressed: _responder,
                child: Text('Resposta 2'),
              ),
              ElevatedButton(
                onPressed: _responder,
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
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
