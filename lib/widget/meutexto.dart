import 'package:flutter/material.dart';
class Meutexto extends StatelessWidget {

  String texto;
  Color cor;

  Meutexto(this.texto, this.cor);
  @override

  Widget build(BuildContext context) {
    return Text(
      this.texto,
      style: TextStyle(
          color: this.cor,
          backgroundColor: Colors.teal,
          fontSize: 44
      ),
    );;
  }
}
