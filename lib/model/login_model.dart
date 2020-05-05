import 'package:t30/model/data/entity/login.dart';

import 'data/service/entity/default_response.dart';
import 'data/service/login/login_service.dart';

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
    LoginService service = LoginServiceFactory.newInstance();

    return Future.delayed(Duration(seconds: 1), () => service.login(login));
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
