import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'view/my_splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'T 30',
      theme: ThemeData(        
          primaryColor: Color.fromARGB(255, 36, 36, 36),
          primaryColorDark: Color.fromARGB(255, 232, 232, 232),
          accentColor:  Color.fromARGB(255, 252, 184, 73)
      ),
      home:  MySplashScreen(title: 'T 30 Home Page'),
//      routes: <String, WidgetBuilder>{
//        '/HomePage': (BuildContext context) => new Home(title: 'T 30 Home Page')
//      },
    );
  }
}



