import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_login/state/UserState.dart';
import '../state/UserState.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});
  @override
  Widget build(BuildContext context) {
    var userState = context.watch<UserState>();
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text.rich(TextSpan(children: <InlineSpan>[
                  WidgetSpan(child: Text("Username")),
                  WidgetSpan(child: Text('*'))
                ])),
                border: OutlineInputBorder(),
                hintText: 'Enter your username'),
          ),
          Divider(),
          EmailForm(),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Navigator.pushNamed(context, '/restapi');
                  },
                  child: Text('Go back')),
              ElevatedButton(
                  onPressed: () {
                    print("haciendo login");
                  },
                  child: Text("login"))
            ],
          ),
        ],
      ),
    );
  }
}

class EmailForm extends StatefulWidget {
  const EmailForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(), hintText: 'Enter your email'),
    );
  }

  @override
  State<EmailForm> createState() {
    // TODO: implement createState
    return _EmailFormState();
  }
}

class _EmailFormState extends State<EmailForm> {
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    myController.addListener(() {
      print('El valor del input es ${myController.text}');
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
          border: OutlineInputBorder(), hintText: 'Enter your email'),
    );
  }
}
