import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t30/generated/i18n.dart';
import 'package:t30/model/login/entity/login.dart';
import 'package:t30/model/login/prefs/login_pref.dart';
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
        title: new Text(S.of(context).system_name),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                  color: MyColor.color(MyColor.gray),
                ),
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Image.asset('images/t30_logo_2.png'),
                )),
            Container(
                width: double.infinity,
                child: RaisedButton(
                  color: MyColor.primaryColor(),
                  textColor: MyColor.accentColor(),
                  child: Text('Novo Teste'),
                  onPressed: () {
                    print('Cadastrar Professor Button pressed!!');
//                      Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                )),
            Container(
                width: double.infinity,
                child: RaisedButton(
                  color: MyColor.primaryColor(),
                  textColor: MyColor.accentColor(),
                  child: Text('Minhas Academias'),
                  onPressed: () {
                    print('Cadastrar Professor Button pressed!!');
//                      Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                )),
            Container(
                width: double.infinity,
                child: RaisedButton(
                  color: MyColor.primaryColor(),
                  textColor: MyColor.accentColor(),
                  child: Text('Últimos Teste'),
                  onPressed: () {
                    print('Cadastrar Professor Button pressed!!');
//                      Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                )),
            Container(
                width: double.infinity,
                child: RaisedButton(
                  color: MyColor.primaryColor(),
                  textColor: MyColor.accentColor(),
                  child: Text('Limpar usuario'),
                  onPressed: () {
                    print('Cadastrar Professor Button pressed!!');
                    LoginPref loginPref = LoginPrefFactory.newInstance();
                    loginPref.saveLogin(Login());
                      //Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
