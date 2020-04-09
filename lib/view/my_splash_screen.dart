import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'home.dart';

class MySplashScreen extends StatefulWidget {
  final String title;

  MySplashScreen({Key key, this.title}) : super(key: key);

  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplashScreen> {

  @override
  Widget build(BuildContext context) {

    return _introScreen();
  }

  /*@override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Home(),
      image: new Image.asset('images/T30.png',fit: BoxFit.contain, ),
      backgroundColor: Color.fromARGB(255, 36, 36, 36),
      loaderColor: Colors.transparent,
    );
  }*/


}

Widget _introScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 5,
        backgroundColor: Color.fromARGB(255, 36, 36, 36),
        navigateAfterSeconds: Home(),
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

