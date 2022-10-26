import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function()? quandoSelecionado;

  const Resposta({super.key, required this.texto, this.quandoSelecionado});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          child: Text(this.texto,
              style: TextStyle(
                color: Colors.white,
              )),
          onPressed: this.quandoSelecionado,
        ));
  }
}
