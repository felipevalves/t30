import 'package:flutter/material.dart';
import 'package:t30/generated/i18n.dart';
import 'package:t30/model/entity/login.dart';
import 'package:t30/presenter/login/login_presenter.dart';
import 'package:t30/util/my_color.dart';
import 'package:t30/util/util.dart';

import '../home_page.dart';
import 'login_view.dart';

class LoginForm extends StatefulWidget {

  final LoginPresenter presenter;

  LoginForm(this.presenter);

  @override
  State<StatefulWidget> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> implements LoginView {
  //identifies the Form and allows form's validation
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  void initState() {
    super.initState();
    this.widget.presenter.view = this;
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  void printMessage(String message) {
    print(message);
  }

  String validateEmailText(String value) {
    if (value.isEmpty) {
      return S.of(context).email_required;
    }

    if (!Util.isEmailValid(value)) {
      return S.of(context).email_invalid;
    }

    return null;
  }

  void login() {
    this.widget.presenter.login(Login(email: emailController.text, password: passwordController.text));

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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: S.of(context).email),
                validator: validateEmailText),
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: TextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.go,
              obscureText: true,
              decoration: InputDecoration(labelText: S.of(context).password),
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
