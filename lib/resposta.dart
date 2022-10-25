import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resposta extends StatelessWidget {
  final String texto;

  const Resposta({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      child: Text(this.texto),
      onPressed: null,
    ));
  }
}
