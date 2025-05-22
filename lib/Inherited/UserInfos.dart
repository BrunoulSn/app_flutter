import 'package:flutter/material.dart';
import 'package:meu_app/Inherited/UserData.dart';

class UserInfos extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return UserData(
      userName: "Brunão",
      child: Scaffold(
        appBar: AppBar(title: Text("Perfil Usuário")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ WelcomeMessage()],
        ),
      ),
    );
  }
}

class WelcomeMessage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final userName = UserData.of(context).userName;
    return  Text("Bem vindo $userName", style:  TextStyle(fontSize: 24));
  }
}