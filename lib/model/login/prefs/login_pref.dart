import 'package:t30/model/login/entity/login.dart';

import 'login_pref_impl.dart';

abstract class LoginPref {
  saveLogin(Login login) {}
  Future<Login> getLogin(){}
}

class LoginPrefFactory {
  static LoginPref _login;
  static LoginPref newInstance(){

    if (_login == null) {
      _login = LoginPrefImpl();
    }

    return _login;
  }

}