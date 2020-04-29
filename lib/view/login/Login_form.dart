import 'package:flutter/material.dart';
import 'package:t30/generated/i18n.dart';
import 'package:t30/model/entity/login.dart';
import 'package:t30/util/my_color.dart';

import '../home_page.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  //identifies the Form and allows form's validation
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void login() {
    final login = Login(email: emailController.text,password: passwordController.text);

    print('email: ' + emailController.text);
//    Navigator.pushReplacement(context,
//        MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.email),
            title: TextFormField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(hintText: S.of(context).email),
                validator: (value) {
                  if (value.isEmpty) {
                    return S.of(context).email_required;
                  }
                  return null;
                }),
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: TextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.go,
              decoration: InputDecoration(hintText: S.of(context).password),
              validator: (value) {
                if (value.isEmpty) {
                  return S.of(context).password_required;
                }
                return null;
              },
            ),
          ),
          ListTile(
            title: RaisedButton(
              child: Text(S.of(context).login),
              color: MyColor.primaryColor(),
              textColor: MyColor.accentColor(),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  login();
                }
              },
            ),
          ),
          ListTile(
            title: RaisedButton(
              child: Text(S.of(context).signup),
              color: MyColor.primaryColor(),
              textColor: MyColor.accentColor(),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
              },
            ),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  print('Esqueci minha senha');
                },
                child: Text(S.of(context).password_forgot),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
