import 'package:flutter/material.dart';
import 'package:t30/presenter/login/login_splash_presenter.dart';
import 'package:t30/util/my_color.dart';
import 'package:t30/view/home_page.dart';

import 'login/login_page.dart';

class MySplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        FutureBuilder(
          future: getPage(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return snapshot.data;
            }
            else {
              return Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: MyColor.color(MyColor.gray),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Image.asset('images/t30_logo_2.png'),
                  ));
            }
          },
        ),

      ],
    );
  }


  Future<Widget> getPage(BuildContext context) async {
    await delay();
    LoginSplashPresenter presenter = LoginSplashPresenterImpl();


    return await presenter.loginServer().then((login) {
      if (login != null) {
        return HomePage();
      }
      return LoginPage();
    });

  }

  Future<String> delay() async =>
      await Future.delayed(Duration(seconds: 1), () {
        return "ok";
      });


}

