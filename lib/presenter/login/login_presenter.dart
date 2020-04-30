import 'package:t30/model/entity/login.dart';
import 'package:t30/view/login/login_view.dart';

class LoginPresenter {

  set view(LoginView view){}
  login(Login login) {}
}

class LoginPresenterImpl implements LoginPresenter {

  LoginView _view;


  @override
  set view(LoginView view) {
    _view = view;
  }

  @override
  login(Login login) {
    print('Login Presenter: ' + login.email);
    print('Login View: $_view');
    //_view.printMessage('Mensagem do presenter. ${login.email} Logado com sucesso!!! ' );
  }


}


