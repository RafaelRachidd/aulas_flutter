import 'package:aula2/widgets/imagens.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Layout"),
        backgroundColor: Colors.red,
      ),
      body: _layoutListView(),
    );
  }

  Widget? _layoutListView() {
    return ListView(
      children: [
        Text("Derac"),
        SuaImagem(caminhoArquivo: "imagens/Derac.jpg"),
        Text("Ibis"),
        SuaImagem(caminhoArquivo: "imagens/IBIS.png")
      ],
    );
  }
}
