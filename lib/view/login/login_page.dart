import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Container(
              child: Column(
                children: <Widget>[
                  Image.asset('images/T30.png'),
                  Text('E-mail'),
                  Text('Senha'),
                  Text('Senha 2'),
                ],
              )
          ),
      ),
    );
  }
}
