import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Entra21')),
        body: Center(
          child: UserCard(
            nome: 'Brunão',
            email: "bruno.exemplo@hotmail.com",
            avatarUrl:
                'https://static.ifoto.ai/template/change_clothes/83286303-12f0-4e65-a6cf-acde69579454.jpg?x-oss-process=image/format,webp/resize,w_320,m_lfit,limit_0',
          ),
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final String nome;
  final String email;
  final String avatarUrl;

  const UserCard({
    super.key,
    required this.nome,
    required this.email,
    required this.avatarUrl,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                radius: 30,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    nome,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
