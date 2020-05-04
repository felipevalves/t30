import 'package:t30/model/data/db/entity/login.dart';
import 'package:http/http.dart' as http;
import 'package:t30/model/data/network/entity/default_response.dart';

import 'base_service.dart';

class LoginService {

  Future<DefaultResponse> login(Login login) async {
//    final response = await http.post('/create', body: );

    var response = await http.get(
        Uri.encodeFull(URLS.BASE_URL),
        headers: {"Accept": "application/json"}
    );
    print(response.statusCode);
    print(response.body);
    return MyResponse(response.statusCode, response.body);


  }

}