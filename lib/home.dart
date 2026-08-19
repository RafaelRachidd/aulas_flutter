import 'package:aula2/widget/botoes.dart';
import 'package:aula2/widget/input.dart';
import 'package:aula2/widget/meutexto.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _variavelqueseraAlterada = "texto padrão";
  final _seuTexto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Exemplo flutter"),
       backgroundColor:Colors.cyanAccent,
     ),
      body: _body(),
    );
  }

  Widget? _body() {
    return Container(color: Colors.blueGrey,
      child: Column(
        children: [
          Text("Texto 01"),
          Text("Texto 02"),
          Text("Hoje eu estou mais feliz"),
          Meutexto (_variavelqueseraAlterada, Colors.blue),
          Meutexto ("Texto 05 estilizado", Colors.white),
          input("Digite seu texto","Escreva aqui" , controller: _seuTexto),

          botoes("Botão altera texto", onClick: _metodoAlteraTexto)

        ],
      ),
    );
  }

  void _metodoAlteraTexto() {
    setState(() {
      _variavelqueseraAlterada = _seuTexto.text;
    });

    print(_variavelqueseraAlterada);}
}





