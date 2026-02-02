import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _texto;
  final void Function()? onSelect;

  const Resposta(this._texto, {this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
      child: ElevatedButton(
        onPressed: onSelect,
        child: Text(_texto),
      ),
    );
  }
}
