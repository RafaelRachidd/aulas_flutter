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
  final _notap1 = TextEditingController();
  final _notap2 = TextEditingController();
  final _notap3 = TextEditingController();
  final _notal = TextEditingController();

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
          input("Digite seu texto","Escreva aqui" , controller: _notap1),
          input("Digite seu texto","Escreva aqui" , controller: _notap2),
          input("Digite seu texto","Escreva aqui" , controller: _notap3),
          input("Digite seu texto","Escreva aqui" , controller: _notal),
          botoes("Botão altera texto", onClick: _metodoAlteraTexto)

        ],
      ),
    );
  }

  void _metodoAlteraTexto() {
   double p1 = double.tryParse(_notap1.text) ?? 0.0;
   double p2 = double.tryParse(_notap2.text) ?? 0.0;
   double p3 = double.tryParse(_notap3.text) ?? 0.0;
   double l = double.tryParse(_notal.text) ?? 0.0;

    double res = (p1*0.2) + (p2*0.2) + (p3*0.4) +l;




    setState(() {
      _variavelqueseraAlterada = "Valor" + res.toString();
    });

    print(_variavelqueseraAlterada);}
}





