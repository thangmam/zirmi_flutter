import 'package:flutter/cupertino.dart';

class MqUtils {
  static double sw({required BuildContext context}) {
    return MediaQuery.of(context).size.width;
  }

  static double sh({required BuildContext context}) {
    return MediaQuery.of(context).size.height;
  }

  static bool isMobile({required BuildContext context}) {
    return sw(context: context) < 600;
  }

  static bool isTablet({required BuildContext context}) {
    return sw(context: context) > 600;
  }
}
