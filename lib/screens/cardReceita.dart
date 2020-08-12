import 'package:flutter/material.dart';
import 'package:minhasReceitas_Flutter/models/receitaModel.dart';

class ItemLista extends StatelessWidget {
  final Receita _itemReceita;
  ItemLista(this._itemReceita);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red[900], //altera a cor do card
        borderRadius: BorderRadiusDirectional.circular(22),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      height: 140, //altura do card principal
      width: 400, //largura do card principal
      child: Row(
        children: [
          Column(
            children: [
              imageCard,
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  tituloReceita(
                    40,
                    text: "${_itemReceita.nome}",
                  ),
                ],
              ),
              Row(
                children: [
                  iconesReceita(
                      tempoPreparo: "${_itemReceita.tempoPreparo}",
                      tempoCook: "${_itemReceita.tempoCook}",
                      qntPorcoes: "${_itemReceita.porcoes}"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final descTextStyle = TextStyle(
  //define cor, fonte dos textos, criar um arquivo com o desc e tamanho de tela
  color: Colors.grey[100],
  //backgroundColor: Colors.red[900],
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 16,
  height: 2,
);

final imageCard = DefaultTextStyle.merge(
    style: descTextStyle,
    //TODO: verificar como mudar o background
    child: Container(
      //color: Colors.white,
      width: 100,
      height: 140,
      child: ClipOval(
        child: Image.asset('assets/images/noImage.png'),
      ),
    ));

Row tituloReceita(double defaultSize, {String text}) {
  return Row(children: <Widget>[
    SizedBox(width: defaultSize),
    Text(
      text,
      style: descTextStyle,
    ),
  ]);
}

class ColunaInformacoesCard extends StatelessWidget {
  /*criado um widget para apresentar no card as informações da receita
  esse widget é chamado em iconesReceita, que passa os parametros para esse widget*/
  final IconData icone;
  final String titulo;
  final String valores;

  const ColunaInformacoesCard({this.icone, this.titulo, this.valores});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icone, color: Colors.grey[100]),
        Text(
          titulo,
          style: descTextStyle,
        ),
        Text(
          valores,
          style: descTextStyle,
        ),
      ],
    );
    //)
  }
}

Row iconesReceita({String tempoPreparo, String tempoCook, String qntPorcoes}) {
  return Row(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
      ), //cria um espaçamento do card com as laterais do mesmo
      ColunaInformacoesCard(
          icone: Icons.kitchen, titulo: 'Pteste', valores: tempoPreparo),
      Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 25.0), //cria o espaçamento interno do item do meio
        child: ColunaInformacoesCard(icone: Icons.timer, titulo: 'Pcook', valores: tempoCook),
      ),
      ColunaInformacoesCard(icone: Icons.restaurant, titulo: 'Pporções', valores: qntPorcoes),
    ],
  );
}
