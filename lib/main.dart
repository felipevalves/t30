import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:t30/util/my_color.dart';
import 'view/splash_screen.dart';
import 'package:t30/generated/i18n.dart';

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
          primaryColor: MyColor.primaryColor(),
          primaryColorDark: MyColor.primaryColorDark(),
          accentColor:  MyColor.accentColor()
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale('pt'),
      home:  MySplashScreen(),
// 
    );
  }
}



