import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t30/util/hex_color.dart';
import 'package:t30/view/login/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              child: Column(
            children: <Widget>[
              Image.asset('images/T30.png'),
              Container(
                  width: double.infinity,
                  child: RaisedButton(
                    color: HexColor('242424'),
                    textColor: HexColor('fcb849'),
                    child: Text('Abrir Login'),
                    onPressed: () {
                      print('Button pressed!!');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  )),
            ],
          ))
        ],
      )),
    );
    ;
  }
}
