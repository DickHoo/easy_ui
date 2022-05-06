import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///AppBar扩展
extension AppBarEX on AppBar {
  AppBar setTitle(Widget title) {
    return copyWith(title: title);
  }

  AppBar setElevation(double elevation) {
    return copyWith(elevation: elevation);
  }

  AppBar setCenterTitle(bool centerTitle) {
    return copyWith(centerTitle: centerTitle);
  }

  AppBar setSystemUiOverlayStyle(SystemUiOverlayStyle systemUiOverlayStyle) {
    return copyWith(systemUiOverlayStyle: systemUiOverlayStyle);
  }

  AppBar setPreferredSizeWidget(PreferredSizeWidget bottom) {
    return copyWith(bottom: bottom);
  }

  AppBar setActions(List<Widget> actions) {
    return copyWith(actions: actions);
  }

  AppBar copyWith(
      {double? elevation,
      bool centerTitle = true,
      Widget? title,
      SystemUiOverlayStyle? systemUiOverlayStyle,
      Color? backgroundColor,
      Color? foregroundColor,
      List<Widget>? actions,
      PreferredSizeWidget? bottom}) {
    return AppBar(
      elevation: elevation,
      centerTitle: centerTitle,
      title: title,
      systemOverlayStyle: systemUiOverlayStyle,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      actions: [
        ...?actions,
      ],
      bottom: bottom,
    );
  }
}
