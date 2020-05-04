import 'package:flutter/widgets.dart';
import 'package:t30/generated/i18n.dart';
import 'package:t30/model/entity/login.dart';
import 'package:t30/model/login/login_model.dart';
import 'package:t30/util/util.dart';
import 'package:t30/view/login/login_view.dart';

abstract class LoginPresenter {

  set view(LoginView view){}
  loginServer(String email, String password) {}
  loginGoogle() {}
  loginFacebook() {}

  String validateEmailText(String email){}
}

class LoginPresenterImpl implements LoginPresenter {

  LoginView _view;
  BuildContext _context;
  LoginModel _model;


  LoginPresenterImpl(this._context){
    _model = LoginModelImpl();
  }

  @override
  set view(LoginView view) {
    _view = view;
  }

  @override
  loginServer(String email, String password) {

    _view.showLoading();
    _model.loginServer(Login(email: email, password: password));

    Future.delayed(Duration(seconds: 2)).then((_) {
      _view.hideLoading();
      _view.openHomePage();
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


