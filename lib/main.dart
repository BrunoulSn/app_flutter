import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    child: Center(
      child: Text(
        'Hello,World!',
        style: TextStyle(fontSize: 24, color: Colors.blueAccent),
        textDirection: TextDirection.ltr,
      ),
    ),
  ));
}
