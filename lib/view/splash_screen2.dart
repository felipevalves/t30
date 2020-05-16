import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:t30/util/hex_color.dart';

import 'login/login_page.dart';

class MySplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          backgroundColor: HexColor('242424'),
          navigateAfterSeconds: LoginPage(),
          loaderColor: Colors.transparent,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/T30.png'),
              fit: BoxFit.none,
            ),
          ),
        ),
      ],
    );
  }
}

