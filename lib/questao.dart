import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Questao extends StatelessWidget {
  final String texto;

  const Questao({super.key, required this.texto});
  // const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        this.texto,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
