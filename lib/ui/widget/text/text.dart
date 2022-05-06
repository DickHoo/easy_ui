import 'package:flutter/cupertino.dart';
///
/// text 扩展
///
extension TextEX on Text{

  ///设置字体
  Text setFontFamily(String family) {
    var newStyle = TextStyle(fontFamily: family);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///字体大小
  Text setFontSize(double size) {
    var newStyle = TextStyle(fontSize: size);
    return copyWith(style: style?.merge(newStyle)??newStyle);
  }

  ///字体粗细、正斜等
  Text setFontWeight(FontWeight? weight) {
    var newStyle = TextStyle(fontWeight: weight);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///下划线
  Text setUnderLine({bool active = true, Color? color}) {
    var newStyle = TextStyle(
        decoration:  TextDecoration.underline,
        decorationColor: color);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///行间距，倍数
  Text setLineSpacing(double spacing) {
    var newStyle = TextStyle(height: spacing);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///字体颜色
  Text setColorInt(int color) {
    var newStyle = TextStyle(color: Color(color));
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///字体颜色
  Text setColor(Color color) {
    var newStyle = TextStyle(color: color);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///单行
  Text setSingleLine({TextOverflow? overflow = TextOverflow.ellipsis}) {
    return setMaxLines(1);
  }

  ///设置最大行数
  Text setMaxLines(int num, {TextOverflow? overflow = TextOverflow.ellipsis}) {
    return copyWith(maxLines: num, overflow: overflow);
  }

  ///设置文字对齐方式
  Text setAlignment(TextAlign align) {
    return copyWith(textAlign: align);
  }

  ///设置点击事件
  Widget  setOnClick(GestureTapCallback? fn){
    return GestureDetector(
      child: this,
      onTap: fn,
    );
  }

  Text copyWith({String? data,
    Key? key,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior}) {
    return Text(data ?? this.data!,
        key: key ?? this.key,
        style: style ?? this.style,
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        textDirection: textDirection ?? this.textDirection,
        locale: locale ?? this.locale,
        softWrap: softWrap ?? this.softWrap,
        overflow: overflow ?? this.overflow,
        textScaleFactor: textScaleFactor ?? this.textScaleFactor,
        maxLines: maxLines ?? this.maxLines,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
        textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior);
  }
}