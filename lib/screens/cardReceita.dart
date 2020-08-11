import 'package:flutter/material.dart';
//mport 'package:minhasReceitas_Flutter/models/receitaModel.dart';

class ItemLista extends StatelessWidget {
/*
final Receita receita;
const ItemLista({Key key, this.receita})
    : super(key: key);
*/
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
                  descCard,
                  /*buildInfoRow(40,
                  text: "${receita.nome}",
                  ),*/
                ],
              ),
              Row(
                children: [
                  iconList,
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final descTextStyle = TextStyle( //define cor, fonte dos textos, criar um arquivo com o desc e tamanho de tela
  color: Colors.grey[100],
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 16,
  height: 2,
);

final imageCard = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Container(
    width: 100,
    height: 140,
    child: ClipOval(
      child: Image.asset('assets/images/joelho.jpg'),
    ),
  )
);

Row buildInfoRow(double defaultSize, {String text}){
  return Row(
    children: <Widget>[
      SizedBox(width: defaultSize),
      Text(text,
      style: descTextStyle,
      ),
    ]
  );
}

final descCard = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Column(
    children: [
      Text("Joelhos!"), //criar o recebimento do nome da receita
    ],
  ),
);

final iconList = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Container(
    width: 270,
    //color: Colors.yellow[800],
    padding: EdgeInsets.all(10), //Identa 10 pixels em cada direção
    child: Row(
      children: [
        Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0),),//cria um espaçamento do card com as laterais do mesmo
        /*Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child:*/ Column(
            children: [
              Icon(Icons.kitchen, color: Colors.grey[100]),
              Text('PREP:'),
              Text('25 min'),
            ],
          ),
        //),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0), //cria o espaçamento interno do item do meio
          child: Column(
            children: [
              Icon(Icons.timer, color: Colors.grey[100]),
              Text('COOK:'),
              Text('1 hr'),
            ],
          ),
        ),
        Column(
          children: [
            Icon(Icons.restaurant, color: Colors.grey[100]),
            Text('FEEDS:'),
            Text('4-6'),
          ],
        ),
      ],
    ),
  ),
);
