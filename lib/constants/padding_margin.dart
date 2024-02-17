import 'package:flutter/widgets.dart';

class AppPadding {
  static EdgeInsets horizontalPadding(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return EdgeInsets.symmetric(
        horizontal: size.width * 0.05, vertical: size.height * 0.05);
  }
}