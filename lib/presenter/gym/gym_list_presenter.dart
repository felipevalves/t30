import 'package:flutter/widgets.dart';
import 'package:t30/generated/i18n.dart';
import 'package:t30/model/gym/gym_model.dart';
import 'package:t30/view/gym/gym_list_view.dart';

abstract class GymListPresenter {

  set view (GymListView view){}
  findAll(){}

}

class GymListPresenterImpl implements GymListPresenter {

  GymListView _view;
  GymModel _model;
  BuildContext _context;

  GymListPresenterImpl(this._context){
    _model = GymModelImpl();
  }

  @override
  findAll() {
    _view.showLoading();

    _model.findAll().then((response){

      if (response.statusCode == 200) {
        //json converter
        //_view.updateGymList
      }
      else {
        _view.showToast(S.of(_context).http_login_err_404);
      }

    });

    return null;
  }

  @override
  set view(GymListView view) {
    _view = view;
  }

}