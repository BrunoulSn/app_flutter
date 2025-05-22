import 'dart:math';

import 'package:flutter/material.dart';

class RandomNumber extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerador de Números Aleatórios',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RandomNumberWidget(),
    );
  }

}

class RandomNumberWidget extends StatefulWidget {
  @override
  _RandomNumberWidgetState createState() => _RandomNumberWidgetState();
}

class _RandomNumberWidgetState extends State<RandomNumberWidget> {
 int randomNumber = 0;

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerador de Números Aleatórios'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número Aleatório:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              '$randomNumber',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: generateRandomNumber,
              child: Text('Gerar Número'),
            ),
          ],
        ),
      ),
    );
  }

void generateRandomNumber() {
    setState(() {
      randomNumber = Random().nextInt(100);
    });
  }

  
}