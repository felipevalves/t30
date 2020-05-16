import 'package:t30/model/login/entity/login.dart';
import 'package:t30/model/login/prefs/login_pref.dart';

import '../data/service/default_response.dart';
import 'service/login_service.dart';

abstract class LoginModel {
  Future<DefaultResponse> loginServer(Login login) {
    return null;
  }

  saveLogin(Login login){}
  Future<Login> getLogin(){}

  loginGoogle() {}

  loginFacebook() {}
}

class LoginModelImpl implements LoginModel {
  @override
  Future<DefaultResponse> loginServer(Login login) {
    LoginService service = LoginServiceFactory.newInstance();

    return Future.delayed(Duration(seconds: 1), () => service.login(login));
  }


  @override
  Future<Login> getLogin() {
    LoginPref loginPref = LoginPrefFactory.newInstance();

    return loginPref.getLogin();
  }

  @override
  saveLogin(Login login) {

    LoginPref loginPref = LoginPrefFactory.newInstance();
    loginPref.saveLogin(login);
  }

  @override
  loginFacebook() {
    return null;
  }

  @override
  loginGoogle() {
    return null;
  }


}
