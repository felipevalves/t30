import 'package:shared_preferences/shared_preferences.dart';
import 'package:t30/model/login/entity/login.dart';
import 'package:t30/model/login/prefs/login_pref.dart';
import 'package:t30/util/constants.dart';

class LoginPrefImpl implements LoginPref {

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Future<Login> getLogin() async {

    SharedPreferences preferences = await _prefs;

    return Login(email: preferences.get(email), password:  preferences.get(password), token: preferences.get(token));
  }

  @override
  saveLogin(Login login) async {

    SharedPreferences preferences = await _prefs;

    preferences.setString(email, login.email);
    preferences.setString(password, login.password);
    preferences.setString(token, login.token);
  }

}