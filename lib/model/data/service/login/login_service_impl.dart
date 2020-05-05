import 'package:t30/model/data/entity/login.dart';
import 'package:t30/model/data/service/entity/default_response.dart';

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
      return Future.delayed(
          Duration(seconds: 1), () => MyResponse(200, 'token'));
    }
    catch (err) {
      print(err);
      return MyResponse(400, err.toString());
    }
  }
}