//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:minhasReceitas_Flutter/models/receitaModel.dart';
import 'package:minhasReceitas_Flutter/screens/cardReceita.dart';
import 'package:minhasReceitas_Flutter/screens/receita.dart';

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
      body: ListView.builder(
        itemCount: widget._receitas.length,
        itemBuilder: (context, indice){
          final receita = widget._receitas[indice];
          return ItemLista(receita);
          //return ItemReceita(receita);
        }
      ),
      //body: ItemLista(), //necessario criar a lista
      floatingActionButton: FloatingActionButton(
        //criar o evento de apertar o botao
        onPressed: () {
          final Future<Receita> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioNovaReceita();
          }));
          future.then(
            (receitaRecebida) {
              _atualiza(receitaRecebida);
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _atualiza(Receita receitaRecebida) {
    if (receitaRecebida != null) {
      setState(() {
        widget._receitas.add(receitaRecebida);
      });
    }
  }
}

class ItemReceita extends StatelessWidget{
  final Receita _receita;
  ItemReceita(this._receita);

  @override
  Widget build(BuildContext context){
    return Card(
      child: ListTile(
        title: Text(_receita.nome),
        subtitle: Text(_receita.tempoPreparo.toString()),
      )
    );
  }
}
