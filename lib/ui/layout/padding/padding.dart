import 'package:flutter/cupertino.dart';
extension PaddingEx<T extends Widget> on T{

  Padding get paddingZero => padding();

  Padding paddingAll(double size) {
    return padding(left: size, right: size, top: size, bottom: size);
  }

  Padding paddingSymmetric({double horizontal = 0, double vertical = 0}) {
    return padding(left: horizontal, right: horizontal, top: vertical, bottom: vertical);
  }

  Padding paddingLeft(double size) {
    return padding(left: size);
  }

  Padding paddingRight(double size) {
    return padding(right: size);
  }

  Padding paddingTop(double size) {
    return padding(top: size);
  }

  Padding paddingBottom(double size) {
    return padding(bottom: size);
  }

  Padding padding({double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return Padding(
      padding: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }

}