import 'package:t30/model/entity/login.dart';

abstract class LoginModel {

  loginServer(Login login)  {}
  loginGoogle(){}
  loginFacebook(){}

}

class LoginModelImpl implements LoginModel {

  @override
  loginServer(Login login)  {

    return null;
  }

  @override
  loginFacebook() {
    // TODO: implement loginFacebook
    return null;
  }

  @override
  loginGoogle() {
    // TODO: implement loginGoogle
    return null;
  }

}