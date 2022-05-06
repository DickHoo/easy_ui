import 'package:flutter/cupertino.dart';
extension MarginEx<T extends Widget> on T{

  Container get marginZero => margin();

  Container marginAll(double size) {
    return margin(left: size, right: size, top: size, bottom: size);
  }

  Container marginSymmetric({double horizontal = 0, double vertical = 0}) {
    return margin(left: horizontal, right: horizontal, top: vertical, bottom: vertical);
  }

  Container marginLeft(double size) {
    return margin(left: size);
  }

  Container marginRight(double size) {
    return margin(right: size);
  }

  Container marginTop(double size) {
    return margin(top: size);
  }

  Container marginBottom(double size) {
    return margin(bottom: size);
  }

  Container margin({double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return Container(
      margin: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }

}