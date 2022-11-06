import 'package:flutter/material.dart';
import 'resposta.dart';
import 'questao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  // final void Function()? quandoSelecionado;

  Questionario({
    super.key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? this.perguntas[this.perguntaSelecionada]['respostas'] as List<String>
        : [];

    return Column(
      children: [
        Questao(
            texto:
                this.perguntas[this.perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((t) => Resposta(texto: t, quandoSelecionado: this.responder))
            .toList()
      ],
    );
  }
}
