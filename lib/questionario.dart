import 'package:flutter/material.dart';
import 'resposta.dart';
import 'questao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  // final void Function()? quandoSelecionado;

  Questionario({
    super.key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? this.perguntas[this.perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: [
        Questao(
            texto:
                this.perguntas[this.perguntaSelecionada]['texto'].toString()),
        ...respostas.map(
          (resp) => Resposta(
            texto: resp["texto"].toString(),
            quandoSelecionado: () => quandoResponder(resp["pontuacao"] as int),
          ),
        )
      ],
    );
  }
}
