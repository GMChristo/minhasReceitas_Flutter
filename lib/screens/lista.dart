import 'package:flutter/material.dart';
import 'package:minhasReceitas_Flutter/models/receita.dart';
import 'package:minhasReceitas_Flutter/screens/cardReceita.dart';

const _tituloAppBar = 'Minhas Receitas!';

class ListaReceitas extends StatefulWidget {
  final List<Receita> _receitas = List();
  @override
  State<StatefulWidget> createState() {
    return ListaReceitasState();
  }
}

class ListaReceitasState extends State<ListaReceitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ItemLista(),//necessario criar a lista
      floatingActionButton: FloatingActionButton(//criar o evento de apertar o botao
        onPressed: null,
        child: Icon(Icons.add),
        ),
    );
  }
}
