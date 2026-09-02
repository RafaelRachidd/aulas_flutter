import 'package:exlayoutsm/widgets/imagens.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo layout"),
        backgroundColor: Colors.red,
      ),
      body: _layoutLinhaseColunas()
      //_layoutColunas()
      //_layoutLinhas()
      //_layoutGridView()

      //_layoutListView(),
    );
  }

  _layoutListView() {
    return ListView(
      children: [
        Text("Derac"),
        SuaImagem(caminhoArquivo: "imagens/Derac.jpg"),
        Text("IBIS"),
        SuaImagem(caminhoArquivo: "imagens/IBIS.png")
      ],
    );
  }

  _layoutGridView() {
    return GridView(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Text("Derac"),
          SuaImagem(caminhoArquivo: "imagens/Derac.jpg"),
          Text("IBIS"),
          SuaImagem(caminhoArquivo: "imagens/IBIS.png"),
          Text("Derac"),
          SuaImagem(caminhoArquivo: "imagens/Derac.jpg"),
          Text("IBIS"),
          SuaImagem(caminhoArquivo: "imagens/IBIS.png"),
          Text("Derac"),
          SuaImagem(caminhoArquivo: "imagens/Derac.jpg"),
          Text("IBIS"),
          SuaImagem(caminhoArquivo: "imagens/IBIS.png")
        ],
    );
  }

  _layoutLinhas() {
    return Container(
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Texto 01"),
          Text("Texto 02")
        ],
      ),
    );
  }

  _layoutColunas() {
    return Container(
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Linha 01"),
          Text("Linha 02"),
          Text("Linha 03")
        ],
      ),
    );
  }

  _layoutLinhaseColunas() {
    return Container(
      color: Colors.lightGreenAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Linha 01 treter"),
              Text("Linha 02 dfdsfdfdfd")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Text("Linha 02 fdfdfdfds"),
              Text("Linha 02 dfgfdgfdgfdg")
            ],
          )
        ],
      ),
    );
  }


}
