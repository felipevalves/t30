import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Welcome In SplashScreen Package"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Succeeded!",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            Container(
              child: Image.asset('images/T30.png' ),
            )
          ],
        )
      ),
    );
    ;
  }
}
