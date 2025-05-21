import 'package:flutter/material.dart';

class BotaoCount extends StatefulWidget {
  @override
  BotaoContador createState() => BotaoContador();
}

class BotaoContador extends State<BotaoCount> {
  String texto = "Clicado:";
  int count = 0;

  void incrementar() {
    setState(() {
      count++;
    });
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(child: Text("Contador: $count")),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementar,
        child: Icon(Icons.add),
      ),
      );
  }
}