import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_login/pages/MyMainPage.dart';
import 'package:simple_login/screens/Login.dart';
import 'package:simple_login/screens/ObjectListScreen.dart';
import 'package:simple_login/screens/Register.dart';
import 'package:simple_login/state/UserState.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //           ColorScheme.fromSeed(seedColor: Color.fromRGBO(32, 7, 141, 1))),

    return ChangeNotifierProvider(
        create: (context) => UserState(),
        child: MaterialApp(
          title: 'Namer App',
          theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange)),
          home: const MyMainPage(),
          routes: {
            '/login': (context) => const LoginScreen(),
            '/register': (context) => const RegisterScreen(),
            '/restapi': (context) => const ObjectListScreen(),
          },
        ));
  }
}
