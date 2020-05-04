import 'package:flutter/material.dart';
import 'package:t30/presenter/login/login_presenter.dart';
import 'package:t30/util/my_color.dart';

import 'login_form.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: MyColor.primaryColorDark(),
          body: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    decoration: BoxDecoration(
                      color: MyColor.primaryColor(),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset('images/t30_logo_2.png'),
                    )),
                 LoginForm(LoginPresenterImpl(context)),
              ],
            ),
          ),
        );
  }
}
