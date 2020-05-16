import 'package:t30/model/login/entity/login.dart';
import 'package:t30/model/data/service/default_response.dart';
import 'package:t30/util/json_converter.dart';

import 'login_service.dart';

class LoginServiceImpl implements LoginService {

  Future<DefaultResponse> login(Login login) async {
//    final response = await http.post('/create', body: );

    try {
//      var response = await http.get(
//          Uri.encodeFull(URLS.BASE_URL),
//          headers: {"Accept": "application/json"}
//      );
//      print(response.statusCode);
//      print(response.body);
//      return MyResponse(response.statusCode, response.body);

      Login authenticated = Login(email: login.email, password: login.password, token: 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9');

      return Future.delayed(
          Duration(seconds: 1), () => MyResponse(200, convertLoginToJson(authenticated)));
    }
    catch (err) {
      print(err);
      return MyResponse(400, err.toString());
    }
  }
}