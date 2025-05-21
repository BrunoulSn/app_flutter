import 'package:flutter/material.dart';
import 'package:meu_app/stateful/botao.dart';
import 'package:meu_app/stateless/Botao.dart';
import 'package:meu_app/stateless/SemEstado.dart';
import 'package:meu_app/stateless/User.dart';

void main() {
 /* runApp(MaterialApp(home: Center(
    child: User(),
  ),));*/
  runApp(MaterialApp(home: Center(
    child: BotaoCount(),
  ),));
}
 

/*No Flutter temos 3 tipos de estados de aplicação

1. STATELESS (Estado Imutável)
A Ui é construída uma vez e não muda durante o ciclo de vida do widget.

2. STATEFUL (Estado Local)
A UI muda quando o estado interno muda
É usado em widgets que tem com o usuario, como entradas de textos, carregamento de dados, animações, etc.


3. INHERITED (Estado Herdado)
Compartilha dados descendentes na árvore de widgets
Util para dados globais leves como temas, idiomas e Etc



*/