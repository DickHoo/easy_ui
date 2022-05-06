import 'package:easy_ui/ui/scope_ex.dart';
import 'package:flutter/cupertino.dart';

extension LayoutEx<T extends Widget> on T{
  Expanded expanded() {
    return Expanded(child: this);
  }

  SizedBox height(double? height) {
    return SizedBox(height: height, child: this);
  }

  SizedBox width(double? width) {
    return SizedBox(width: width, child: this);
  }

  SizedBox size({double? width, double? height}) {
    return SizedBox(width: width, height: height, child: this);
  }

  ConstrainedBox maxWidth(double? size) {
    return copyWith(maxWidth: size);
  }

  ConstrainedBox maxHeight(double? size) {
    return copyWith(maxHeight: size);
  }

  ConstrainedBox minWidth(double? size) {
    return copyWith(minWidth: size);
  }

  ConstrainedBox minHeight(double? size) {
    return copyWith(minHeight: size);
  }

  ConstrainedBox copyWith(
      {double? maxWidth, double? maxHeight, double? minWidth, double? minHeight}) {
    BoxConstraints constraints = BoxConstraints(
        maxWidth: maxWidth ?? double.infinity,
        maxHeight: maxHeight ?? double.infinity,
        minWidth: minWidth ?? 0,
        minHeight: minHeight ?? 0);

    if (this is ConstrainedBox) {
      var thisConstraints = (this as ConstrainedBox).constraints;
      constraints =
          maxWidth?.let((it) => thisConstraints.copyWith(maxWidth: maxWidth)) ?? thisConstraints;
      constraints =
          maxHeight?.let((it) => thisConstraints.copyWith(maxWidth: maxWidth)) ?? thisConstraints;
      constraints =
          minWidth?.let((it) => thisConstraints.copyWith(maxWidth: maxWidth)) ?? thisConstraints;
      constraints =
          minHeight?.let((it) => thisConstraints.copyWith(maxWidth: maxWidth)) ?? thisConstraints;
    }
    return ConstrainedBox(constraints: constraints, child: this);
  }

}