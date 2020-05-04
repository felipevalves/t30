import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:t30/generated/i18n.dart';
import 'package:t30/presenter/login/login_presenter.dart';
import 'package:t30/util/my_color.dart';

import '../home_page.dart';
import 'login_view.dart';

class LoginForm extends StatefulWidget {

  final LoginPresenter presenter;


  LoginForm(this.presenter){
   print('LoginForm');
  }

  @override
  State<StatefulWidget> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> implements LoginView {
  //identifies the Form and allows form's validation
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  ProgressDialog _progressDialog;

  @override
  void initState() {
    super.initState();
    this.widget.presenter.view = this;
  }

  @override
  void didUpdateWidget(LoginForm oldWidget) {
    super.didUpdateWidget(oldWidget);
    this.widget.presenter.view = this;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void openHomePage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  hideLoading() {
    if (_progressDialog.isShowing()) {
      _progressDialog.hide();
    }
  }

  @override
  showLoading() {
    if (!_progressDialog.isShowing()) {
      _progressDialog.show();
    }
  }

  void _buildProgressDialog(BuildContext context) {
    _progressDialog = ProgressDialog(context);
    _progressDialog.style(message: S.of(context).wait, backgroundColor: MyColor.accentColor());
  }

  String _validateEmailText(String value) {
    return this.widget.presenter.validateEmailText(value);
  }

  void _login() {
    this.widget.presenter.loginServer(emailController.text, passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    _buildProgressDialog(context);

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
                validator: _validateEmailText),
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
                  _login();
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
