import 'package:flutter/cupertino.dart';
import 'package:flutter_questionario/questao.dart';
import 'package:flutter_questionario/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['Respostas']
            as List<Map<String, Object>>
        : [];

    List widgets = respostas
        .map((t) => Resposta(t['texto'] as String,
            onSelect: () => responder(t['pontuacao'] as int)))
        .toList();

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['Texto'] as String),
        ...widgets,
      ],
    );
  }
}
