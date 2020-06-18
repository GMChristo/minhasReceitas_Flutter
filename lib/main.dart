import 'package:flutter/material.dart';
import 'package:minhasReceitas_Flutter/screens/cardReceita.dart';

void main() => runApp(MinhasReceitasApp());

class MinhasReceitasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size _size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[900],
        accentColor: Colors.red[900],
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Minhas Receitas')),
        body: TesteCard(),
      ),
    );
  }
}

