
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minhasReceitas_Flutter/screens/cardReceita.dart';

class Editor extends StatelessWidget {
final TextEditingController controlador;
final String rotulo;
final String dica;
final IconData icone;

const Editor({
  this.controlador,
  this.rotulo,
  this.dica,
  this.icone
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: descTextStyle,
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
      ),
    );
  }
}


/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const _nomeReceita = 'Nome da Receita:';
const _tempoPreparoReceita = 'Tempo de Preparo:';
const _tempoCookReceita = 'Tempo de Cook:';
const _qntPorcoes = 'Quantidade de Porções:';
const _tituloAppBar = 'Nova Receita';

class FormularioReceita extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return FormularioReceitaState();
  }
}

class FormularioReceitaState extends State<FormularioReceita> {
  final TextEditingController _controladorCampoNome = TextEditingController();
  final TextEditingController _controladorCampoTempoPreparo = TextEditingController();
  final TextEditingController _controladorCampoTempoCook = TextEditingController();
  final TextEditingController _controladorCampoQntPorcoes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
      ),   
    );
  }
}*/