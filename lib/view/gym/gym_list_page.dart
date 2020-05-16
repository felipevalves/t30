import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:t30/util/my_color.dart';

import 'gym_list_view.dart';

class GymListPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => GymListPageState();
}

class GymListPageState extends State<GymListPage> implements GymListView {

  ProgressDialog _progressDialog;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

  @override
  hideLoading() {
    if (_progressDialog.isShowing()) {
      _progressDialog.hide();
    }
  }

  @override
  showLoading() {
    if (!_progressDialog.isShowing()) {
      _progressDialog.show();
    }
  }

  @override
  showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: MyColor.accentColor(),
        textColor: MyColor.primaryColor(),
        fontSize: 16.0
    );
  }

}