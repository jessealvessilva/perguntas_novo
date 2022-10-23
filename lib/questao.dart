import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Questao extends StatelessWidget {
  final String texto;

  const Questao({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.texto),
    );
  }
}
