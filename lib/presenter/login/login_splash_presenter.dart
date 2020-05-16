import 'package:t30/model/login/entity/login.dart';
import 'package:t30/model/login/login_model.dart';
import 'package:t30/util/json_converter.dart';

abstract class LoginSplashPresenter {

  loginServer() {}
  Future<Login> getLogin(){}

}

class LoginSplashPresenterImpl implements LoginSplashPresenter {

  LoginModel _model = LoginModelImpl();

  @override
  Future<Login> getLogin() {
    return _model.getLogin();
  }


  @override
  Future<Login> loginServer() async {

    Login login = await getLogin();
    print("Login: " + login.toString());

    if (!login.isLoginValid())
      return null;

    return _model.loginServer(login).then((response) {
      if (response.statusCode == 200) {
        Login l = convertJsonToLogin(response.message);
        _model.saveLogin(l);
        return l;
      }
      else {
        _model.saveLogin(Login());
        return null;
      }
    });
  }


}