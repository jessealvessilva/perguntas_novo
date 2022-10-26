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
              Resposta(texto: 'Resposta 1', quandoSelecionado: _responder),
              Resposta(texto: 'Resposta 1', quandoSelecionado: _responder),
              Resposta(texto: 'Resposta 1', quandoSelecionado: _responder),
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
