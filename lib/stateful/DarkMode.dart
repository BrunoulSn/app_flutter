import 'package:flutter/material.dart';

class Darkmode extends StatefulWidget{

State<StatefulWidget> createState() => _AppState();

}

class _AppState extends State<Darkmode> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tema Escuro'),
          actions: [
            IconButton(
              icon: Icon(isDarkMode ? Icons.wb_sunny : Icons.nights_stay),
              onPressed: toggleTheme,
            ),
          ],
        ),
        body: Center(
          child: Text(
            'Clique no ícone para alternar o tema',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}