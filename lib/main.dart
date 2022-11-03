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
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
        'teste': 1
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
        'teste': 2
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
        'teste': 3
      },
    ];

    List<Widget> respostas = [];

    for (var textoResp
        in perguntas[_perguntaSelecionada]['respostas'] as List) {
      print(textoResp);
      respostas.add(Resposta(texto: textoResp, quandoSelecionado: _responder));
    }
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: [
              Questao(
                  texto: perguntas[_perguntaSelecionada]['texto'].toString()),
              ...respostas
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
