
import 'dart:ui';

import 'package:t30/util/hex_color.dart';

class MyColor{

  static const String _primaryColor = '242424';
  static const String _primaryColorDark = 'e8e8e8';
//  static const String _primaryColorDark = '141414';
  static const String _accentColor = 'fcb849';

  static const String gray = '303030';

  static Color primaryColor() {
    return HexColor(_primaryColor);
  }

  static Color primaryColorDark() {
    return HexColor(_primaryColorDark);
  }

  static Color accentColor() {
    return HexColor(_accentColor);
  }

  static Color color(String hex) {
    return HexColor(hex);
  }

}