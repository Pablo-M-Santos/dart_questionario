import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function()? onReiniciar;

  const Resultado(this.pontuacao, {this.onReiniciar});

  String get fraseResultado {
    if (pontuacao >= 25) {
      return 'Excelente!';
    } else if (pontuacao >= 15) {
      return 'Muito bom!';
    } else if (pontuacao >= 10) {
      return 'Bom!';
    } else {
      return 'Pode melhorar!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          onPressed: onReiniciar,
          child: const Text('Reiniciar Questionário!'),
        ),
      ],
    );
  }
}
