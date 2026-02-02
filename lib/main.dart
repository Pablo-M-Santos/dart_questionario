import 'package:flutter/material.dart';
import 'package:flutter_questionario/questionario.dart';

import 'resultado.dart';

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  final _perguntas = const [
    {
      'Texto': 'Qual sua cor favorita?',
      'Respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 8},
        {'texto': 'Verde', 'pontuacao': 6},
        {'texto': 'Branco', 'pontuacao': 4}
      ],
    },
    {
      'Texto': 'Qual seu animal favorito?',
      'Respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 8},
        {'texto': 'Elefante', 'pontuacao': 6},
        {'texto': 'Leão', 'pontuacao': 4}
      ],
    },
    {
      'Texto': 'Qual seu instrutor favorito?',
      'Respostas': [
        {'texto': 'Maria', 'pontuacao': 10},
        {'texto': 'João', 'pontuacao': 8},
        {'texto': 'Leo', 'pontuacao': 6},
        {'texto': 'Pedro', 'pontuacao': 4}
      ],
    },
  ];

  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _pontuacaoTotal += pontuacao;
        _perguntaSelecionada++;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder)
            : Resultado(_pontuacaoTotal, onReiniciar: _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
