import 'package:flutter/widgets.dart';

class SizeConfig {
  static double _safeAreaHorizontal = 0;
  static double _safeAreaVertical = 0;

  static double screenWidth = 0;
  static double screenHeight = 0;

  static double blockSizeHorizontal = 0;
  static double blockSizeVertical = 0;

  static double safeBlockHorizontal = 0;
  static double safeBlockVertical = 0;

  static void init(BuildContext context) {
    var _mediaQueryData = MediaQuery.of(context) ??
        MediaQueryData.fromWindow(WidgetsBinding.instance.window);

    SizeConfig.screenWidth = _mediaQueryData.size.width;
    SizeConfig.screenHeight = _mediaQueryData.size.height;
    SizeConfig.blockSizeHorizontal = screenWidth / 100;
    SizeConfig.blockSizeVertical = screenHeight / 100;
    SizeConfig._safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    SizeConfig._safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;

    SizeConfig.safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    SizeConfig.safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}
