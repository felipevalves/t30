import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'util/hex_color.dart';
import 'view/splash_screen.dart';

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
//          primaryColor: Color.fromARGB(255, 36, 36, 36),
          primaryColor: HexColor('242424'),
          primaryColorDark: HexColor('e8e8e8'),
          accentColor:  HexColor('fcb849')
      ),
      home:  MySplashScreen(),
//      routes: <String, WidgetBuilder>{
//        '/HomePage': (BuildContext context) => new Home(title: 'T 30 Home Page')
//      },
    );
  }
}



