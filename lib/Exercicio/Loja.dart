import 'package:flutter/material.dart';

class Loja extends StatefulWidget {
@override
  State<StatefulWidget> createState() => LojaState();
}

class LojaState extends State<Loja> {
    String statusLoja = 'Fechada';

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Loja')),
        body: Center(
          child: Text(
            'A loja está $statusLoja',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  String alterarStatusLoja() {
    if (statusLoja == 'Fechada') {
      return 'Aberta';
    } else {
      return'Fechada';
    }
  }
}
