import 'dart:convert';

import 'package:t30/model/login/entity/login.dart';
import 'package:t30/model/gym/entity/gym_list.dart';

String convertLoginToJson (Login login) => jsonEncode(login);

Login convertJsonToLogin(String json) {
  var jsonParsed = jsonDecode(json);
  return Login.fromJson(jsonParsed);
}

GymList convertJsonToListGym(String json) {
  var jsonParsed = jsonDecode(json);
  return GymList.fromJson(jsonParsed);
}
