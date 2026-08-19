import 'package:flutter/material.dart';
class botoes extends StatelessWidget {
String texto;
final void Function () onClick;
botoes(this.texto, {required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onClick,
        child: Text(texto),
    );
  }
}
