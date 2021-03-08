import 'package:flutter/cupertino.dart';

class SizeConfig {
  static double heightScreen = 0;
  static double widthScreen = 0;
  static double heightBlock = 0;
  static double widthBlock = 0;

  SizeConfig(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    SizeConfig.heightScreen = mediaQuery.size.height;
    SizeConfig.widthScreen = mediaQuery.size.width;
    SizeConfig.heightBlock = mediaQuery.size.height / 100;
    SizeConfig.widthBlock = mediaQuery.size.width / 100;
  }
}
