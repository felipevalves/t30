import 'package:t30/model/login/entity/login.dart';
import 'package:t30/model/data/service/default_response.dart';

import 'login_service_impl.dart';

abstract class LoginService {
  Future<DefaultResponse> login(Login login) async { return null;}
}

class LoginServiceFactory {
  static LoginService _service;
  static LoginService newInstance(){

    if (_service == null) {
      _service = LoginServiceImpl();
    }

    return _service;
  }

}