import 'package:flutter/widgets.dart';
import 'package:t30/generated/i18n.dart';
import 'package:t30/model/data/entity/login.dart';
import 'package:t30/model/login_model.dart';
import 'package:t30/util/util.dart';
import 'package:t30/view/login/login_view.dart';

abstract class LoginPresenter {
  set view(LoginView view) {}

  loginServer(String email, String password) {}

  loginGoogle() {}

  loginFacebook() {}

  String validateEmailText(String email) { return null;}
}

class LoginPresenterImpl implements LoginPresenter {
  LoginView _view;
  BuildContext _context;
  LoginModel _model;

  LoginPresenterImpl(this._context) {
    _model = LoginModelImpl();
  }

  @override
  set view(LoginView view) {
    _view = view;
  }

  @override
  loginServer(String email, String password) {
    _view.showLoading();
    _model.loginServer(Login(email: email, password: password)).then((response) {
      _view.hideLoading();
      if (response.statusCode == 200) {
        _view.openHomePage();
        //desserializar para loginResponse?
        //verificar se salva retorno no pref
      }
      else {
        _view.showToast(S.of(_context).http_login_err_404);
      }
    });

  }

  String validateEmailText(String email) {
    if (email.isEmpty) {
      return S.of(_context).email_required;
    }

    if (!Util.isEmailValid(email)) {
      return S.of(_context).email_invalid;
    }

    return null;
  }

  @override
  loginFacebook() {
    _model.loginFacebook();
  }

  @override
  loginGoogle() {
    _model.loginGoogle();
  }
}
