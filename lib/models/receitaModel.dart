//import 'package:flutter/rendering.dart';

class Receita {
  final String nome;
  final int tempoPreparo;
  final int tempoCook; //escolher nome melhor
  final int porcoes;

  Receita(this.nome, this.tempoPreparo, this.tempoCook, this.porcoes);

  @override
  String toString() {
    return 'Receita{nome: $nome, tempoPreparo: $tempoPreparo, tempoCook: $tempoCook, porções: $porcoes}';
  }
}