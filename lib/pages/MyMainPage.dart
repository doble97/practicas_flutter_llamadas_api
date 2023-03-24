import 'package:flutter/material.dart';

class MyMainPage extends StatelessWidget {
  const MyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pagina de inicio")),
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: () {
                  print("Login");
                  Navigator.pushNamed(context, '/login');
                },
                child: Text("Entrar")),
            ElevatedButton(
                onPressed: () {
                  print("Register");
                  Navigator.pushNamed(context, '/register');
                },
                child: Text('Registrarse')),
            ElevatedButton(
                onPressed: () {
                  print("Llamadas api");
                  Navigator.pushNamed(context, '/restapi');
                },
                child: Text('Rest API'))
          ]),
        ),
      ),
    );
  }
}
