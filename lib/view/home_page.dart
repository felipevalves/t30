import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t30/util/my_color.dart';

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
                    color: MyColor.primaryColor(),
                    textColor: MyColor.accentColor(),
                    child: Text('Abrir Login'),
                    onPressed: () {
                      print('Button pressed!!');
                    },
                  )),
              Container(
                  width: double.infinity,
                  child: RaisedButton(
                    color: MyColor.primaryColor(),
                    textColor: MyColor.accentColor(),
                    child: Text('Cadastrar Professor'),
                    onPressed: () {
                      print('Cadastrar Professor Button pressed!!');
//                      Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  )),
            ],
          ))
        ],
      )),
    );
  }
}
