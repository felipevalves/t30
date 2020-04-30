import 'package:t30/view/login/Login_form.dart';
import 'package:t30/view/login/login_view.dart';

class Util{

  static bool isEmailValid(String email) {

    RegExp regex = new RegExp('.+@.+\\.[a-z A-Z]+');
    return regex.hasMatch(email);
  }


}

main() {
  var ok = Util.isEmailValid('felipe@milicom.o');

  print(ok);



}