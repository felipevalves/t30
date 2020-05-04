import 'dart:math';

import 'package:t30/model/data/db/entity/login.dart';
import 'package:t30/model/data/network/entity/default_response.dart';
import 'package:t30/model/data/network/login_service.dart';

abstract class LoginModel {
  Future<DefaultResponse> loginServer(Login login) {
    return null;
  }

  loginGoogle() {}

  loginFacebook() {}
}

class LoginModelImpl implements LoginModel {
  @override
  Future<DefaultResponse> loginServer(Login login) {
    var service = LoginService();

    return Future.delayed(Duration(seconds: 1)).then((_) {
      return service.login(login);
    });
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
