import 'package:flutter/material.dart';

/*class ListaDeReceitas extends StatefulWidget {
  
  final List<Receitas> _receitas = List();

  @override
  State<StatefulWidget> createState(){
    return ListaDeReceitasState();
  }  
}

class ListaDeReceitasState extends ListaDeReceitas{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, indice)),
    );
  }
}*/

class TesteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 400,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      color: Colors.black,
      child: Stack(
        //se nao for definido um height no container "pai", o Stack faz com que ele tenha o tamanho definido Stack
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 150,
            // color: Colors.blueGrey,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/images/joelho.jpg'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Nome da receita',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemLista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(22),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      height: 160,
      width: 400,
      child: Row(
        children: [
          Column(
            children: [
              Expanded(
                child: Image.asset('assets/images/joelho.jpg'),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  descCard,
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

final descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 16,
  height: 2,
);

final descCard = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Column(
    children: [
      Text('Joelho!!!'),
    ],
  ),
);

final iconList = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Container(
    padding: EdgeInsets.all(20),
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.kitchen, color: Colors.red[900]),
            Text('PREP:'),
            Text('25 min'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.timer, color: Colors.red[900]),
            Text('COOK:'),
            Text('1 hr'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.restaurant, color: Colors.red[900]),
            Text('FEEDS:'),
            Text('4-6'),
          ],
        ),
      ],
    ),
  ),
);
