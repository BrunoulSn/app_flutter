import 'package:flutter/material.dart';

class UserData extends InheritedWidget{

  final String userName;

  const UserData({
    required this.userName,//Widget Filho que herda o nome
    required Widget child, //passa o filho para o contrutor pai
    
  }) : super(child:child);

/**Este método estatico pode ser chamado independetemente de termos instanciados o obejto ou não
 * 
 * definimos um método estatico chamando of
 * isso significa que você pode chamar UserData.of(Context) sem precisar de uma instanca de UserData
 * quem chamar vai receber um BuildContext, ou seja um contexo onde o widget está na árvore
 */

static UserData of (BuildContext context){
  //Esse método busca o widget mais próximo do UserData acima do widget atual
  final result = context.dependOnInheritedWidgetOfExactType<UserData>();
  return result!;
}


@override
bool updateShouldNotify(UserData oldWidget){
  return oldWidget.userName != userName;
}
}