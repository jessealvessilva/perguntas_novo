import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado({
    super.key,
    required this.pontuacao,
    required this.quandoReiniciarQuestionario,
  });

  String get fraseResultado {
    print("Pontuação ${pontuacao}");
    if (pontuacao < 8) {
      return "Parabéns";
    } else if (pontuacao < 12) {
      return "Você é bom!";
    } else if (pontuacao < 6) {
      return "Impressionante!";
    } else {
      return "Nível Jedi";
    }
  }

  @override
  Widget build(BuildContext context) {
    print("Pontuação 1 : ${pontuacao}");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text(
            "Reiniciar",
            style: TextStyle(fontSize: 8),
          ),
        )
      ],
    );
  }
}
