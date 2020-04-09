import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatelessWidget
{
  BuildContext _context;
  void navigationToHomePage()
  {
    Navigator.pushNamed(_context, '/HomePage');
  }

  startSplashScreenTimer() async
  {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationToHomePage);
  }

  @override
  Widget build(BuildContext context) {
    this._context = context;
    startSplashScreenTimer();

    return Container(
      child: new Image.asset('images/T30.png', ),
      color: Color.fromARGB(255, 36, 36, 36),
    );
  }

}

/*class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage>
{

  void navigationToHomePage()
  {
    Navigator.pushNamed(context, '/HomePage');
  }

  startSplashScreenTimer() async
  {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationToHomePage);
  }

  @override
  void initState()
  {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    //full screen
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(
            'Splash Scree 1',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          Text(
            'Splash Screem 2',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}*/
