import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minhasReceitas_Flutter/components/editor.dart';
import 'package:minhasReceitas_Flutter/models/receitaModel.dart';

const _tituloAppBar = 'Adicionar receita';
const _rotuloNome = 'Nome da Receita';
const _rotuloTempoPreparo = 'Tempo de preparo';
const _rotuloTempoCook = 'Tempo de cook';
const _rotuloPorcoes = 'Quantidade de porções';
const _textoBotaoConfirmar = 'Confirmar';

class FormularioNovaReceita extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioNovaReceitaState();
  }
}

class FormularioNovaReceitaState extends State<FormularioNovaReceita> {
  final TextEditingController _controladorCampoNome = TextEditingController();
  final TextEditingController _controladorCampoTempoPreparo =
      TextEditingController();
  final TextEditingController _controladorCampoTempoCook =
      TextEditingController();
  final TextEditingController _controladorCampoPorcoes =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controlador: _controladorCampoNome,
              rotulo: _rotuloNome,
            ),
            Editor(
              controlador: _controladorCampoTempoPreparo,
              rotulo: _rotuloTempoPreparo,
              icone: Icons.kitchen,
            ),
            Editor(
              controlador: _controladorCampoTempoCook,
              rotulo: _rotuloTempoCook,
              icone: Icons.timer,
            ),
            Editor(
              controlador: _controladorCampoPorcoes,
              rotulo: _rotuloPorcoes,
              icone: Icons.restaurant,
            ),
            RaisedButton(
              child: Text(_textoBotaoConfirmar),
              onPressed: () {
                _criarReceita(context);
              },
            ),
          ],
        ),
      ),
    );
  }
  void _criarReceita(BuildContext context) {
  final String nomeReceita = _controladorCampoNome.text;
  final int tempoPreparo = int.tryParse(_controladorCampoTempoPreparo.text);
  final int tempoCook = int.tryParse(_controladorCampoTempoCook.text);
  final int qntPorcoes = int.tryParse(_controladorCampoPorcoes.text);

  if(nomeReceita != null && tempoPreparo != null && tempoCook != null && qntPorcoes != null){
    final receitaCriada = Receita(nomeReceita, tempoPreparo, tempoCook, qntPorcoes);
    debugPrint('$receitaCriada');
    Navigator.pop(context, receitaCriada);
  }
}
}


