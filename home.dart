import 'widgets/input.dart';
import 'widgets/imagens.dart';
import 'package:flutter/material.dart';
import 'widgets/buttons.dart';
import 'widgets/textview.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double res = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
        backgroundColor: Colors.red,
      ),
      body: _calculadora(),

    );
  }

  Widget? _calculadora() {
    return Column(
      children: [
    Input("Primeiro número", "Digite aqui", controller: num1,),
        Input("Segundo número", "Digite aqui", controller: num2,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Buttons("+", onClick: onSum),
            Buttons("-", onClick: onSub),
            Buttons("*", onClick: onX),
            Buttons("/", onClick: onDiv)
          ],
        ),

        Text(
          "Resultado: $res",
          style: TextStyle(
            fontSize: 25,
          ),
        ),

      ],
    );

  }

  void onSum() {
    double n1 = double.parse(num1.text);
    double n2 = double.parse(num2.text);

    setState(() {
       res = n1+n2;
    });

  }

  void onSub() {
    double n1 = double.parse(num1.text);
    double n2 = double.parse(num2.text);
  setState(() {
     res = n1-n2;
  });
  }

  void onX() {
    double n1 = double.parse(num1.text);
    double n2 = double.parse(num2.text);
    setState(() {
       res = n1*n2;
    });
  }

  void onDiv() {
    double n1 = double.parse(num1.text);
    double n2 = double.parse(num2.text);
    setState(() {
       res = n1/n2;
    });
  }


}

