import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///TextField 扩展
extension TextFieldEX on TextField {
  ///设置字体
  TextField setFontFamily(String family) {
    var newStyle = TextStyle(fontFamily: family);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///设置提示字体
  TextField setHintFamily(String family) {
    var newStyle = TextStyle(fontFamily: family);
    var mergeStyle = decoration?.hintStyle?.merge(newStyle) ?? newStyle;
    return copyWith(decoration: decoration?.copyWith(hintStyle: mergeStyle));
  }

  ///字体大小
  TextField setFontSize(double size) {
    var newStyle = TextStyle(fontSize: size);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///提示字体大小
  TextField setHintFontSize(double size) {
    var newStyle = TextStyle(fontSize: size);
    var mergeStyle = decoration?.hintStyle?.merge(newStyle) ?? newStyle;
    return copyWith(decoration: decoration?.copyWith(hintStyle: mergeStyle));
  }

  ///字体颜色
  TextField setColorInt(int color) {
    var newStyle = TextStyle(color: Color(color));
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///字体颜色
  TextField setColor(Color color) {
    var newStyle = TextStyle(color: color);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///提示字体颜色
  TextField setHintColorInt(int color) {
    var newStyle = TextStyle(color: Color(color));
    var mergeStyle = decoration?.hintStyle?.merge(newStyle) ?? newStyle;
    return copyWith(decoration: decoration?.copyWith(hintStyle: mergeStyle));
  }

  ///提示字体颜色
  TextField setHintColor(Color color) {
    var newStyle = TextStyle(color: color);
    var mergeStyle = decoration?.hintStyle?.merge(newStyle) ?? newStyle;
    return copyWith(decoration: decoration?.copyWith(hintStyle: mergeStyle));
  }

  ///字体粗细、正斜等
  TextField setFontWeight(FontWeight? weight) {
    var newStyle = TextStyle(fontWeight: weight);
    return copyWith(style: style?.merge(newStyle) ?? newStyle);
  }

  ///提示字体粗细、正斜等
  TextField setHintWeight(FontWeight weight) {
    var newStyle = TextStyle(fontWeight: weight);
    var mergeStyle = decoration?.hintStyle?.merge(newStyle) ?? newStyle;
    return copyWith(decoration: decoration?.copyWith(hintStyle: mergeStyle));
  }

  ///提示字
  TextField setHintText(String hint) {
    return copyWith(decoration: decoration?.copyWith(hintText: hint));
  }

  ///最大长度
  TextField setMaxLength(int len) {
    return copyWith(maxLength: len);
  }

  ///接收什么类型数据
  TextField setKeyboardType(TextInputType textInputType) {
    return copyWith(keyboardType: textInputType);
  }

  ///设置边框
  TextField setBorder(InputBorder border) {
    return copyWith(decoration: decoration?.copyWith(border: border));
  }

  ///无边框
  TextField setNoBorder() {
    return setBorder(InputBorder.none);
  }

  TextField copyWith({
    Key? key,
    TextEditingController? controller,
    FocusNode? focusNode,
    InputDecoration? decoration = const InputDecoration(),
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    TextCapitalization? textCapitalization,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    TextDirection? textDirection,
    bool? readOnly,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    bool? autofocus,
    String? obscuringCharacter,
    bool? obscureText,
    bool? autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool? enableSuggestions,
    int? maxLines = 1,
    int? minLines,
    bool? expands,
    int? maxLength,
    bool? maxLengthEnforced,
    MaxLengthEnforcement? maxLengthEnforcement,
    void Function(String)? onChanged,
    void Function()? onEditingComplete,
    void Function(String)? onSubmitted,
    void Function(String, Map)? onAppPrivateCommand,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double? cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    BoxHeightStyle? selectionHeightStyle,
    BoxWidthStyle? selectionWidthStyle,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    DragStartBehavior? dragStartBehavior,
    bool? enableInteractiveSelection,
    TextSelectionControls? selectionControls,
    void Function()? onTap,
    MouseCursor? mouseCursor,
    Widget? Function(BuildContext,
            {required int currentLength, required bool isFocused, required int? maxLength})?
        buildCounter,
    ScrollController? scrollController,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    Clip? clipBehavior,
    String? restorationId,
    bool? enableIMEPersonalizedLearning,
  }) {
    return TextField(
      key: key ?? this.key,
      controller: controller ?? this.controller,
      focusNode: focusNode ?? this.focusNode,
      decoration: decoration ?? this.decoration,
      keyboardType: keyboardType ?? this.keyboardType,
      textInputAction: textInputAction ?? this.textInputAction,
      textCapitalization: textCapitalization ?? this.textCapitalization,
      style: style ?? this.style,
      strutStyle: strutStyle ?? this.strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textAlignVertical: textAlignVertical ?? this.textAlignVertical,
      textDirection: textDirection ?? this.textDirection,
      readOnly: readOnly ?? this.readOnly,
      toolbarOptions: toolbarOptions ?? this.toolbarOptions,
      showCursor: showCursor ?? this.showCursor,
      autofocus: autofocus ?? this.autofocus,
      obscuringCharacter: obscuringCharacter ?? this.obscuringCharacter,
      obscureText: obscureText ?? this.obscureText,
      autocorrect: autocorrect ?? this.autocorrect,
      smartDashesType: smartDashesType ?? this.smartDashesType,
      smartQuotesType: smartQuotesType ?? this.smartQuotesType,
      enableSuggestions: enableSuggestions ?? this.enableSuggestions,
      maxLines: maxLines ?? this.maxLines,
      minLines: minLines ?? this.minLines,
      expands: expands ?? this.expands,
      maxLength: maxLength ?? this.maxLength,
      maxLengthEnforcement: maxLengthEnforcement ?? this.maxLengthEnforcement,
      onChanged: onChanged ?? this.onChanged,
      onEditingComplete: onEditingComplete ?? this.onEditingComplete,
      onSubmitted: onSubmitted ?? this.onSubmitted,
      onAppPrivateCommand: onAppPrivateCommand ?? this.onAppPrivateCommand,
      inputFormatters: inputFormatters ?? this.inputFormatters,
      enabled: enabled ?? this.enabled,
      cursorWidth: cursorWidth ?? this.cursorWidth,
      cursorHeight: cursorHeight ?? this.cursorHeight,
      cursorRadius: cursorRadius ?? this.cursorRadius,
      cursorColor: cursorColor ?? this.cursorColor,
      selectionHeightStyle: selectionHeightStyle ?? this.selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle ?? this.selectionWidthStyle,
      keyboardAppearance: keyboardAppearance ?? this.keyboardAppearance,
      scrollPadding: scrollPadding ?? this.scrollPadding,
      dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
      enableInteractiveSelection: enableInteractiveSelection ?? this.enableInteractiveSelection,
      selectionControls: selectionControls ?? this.selectionControls,
      onTap: onTap ?? this.onTap,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      buildCounter: buildCounter ?? this.buildCounter,
      scrollController: scrollController ?? this.scrollController,
      scrollPhysics: scrollPhysics ?? this.scrollPhysics,
      autofillHints: autofillHints ?? this.autofillHints,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      restorationId: restorationId ?? this.restorationId,
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning ?? this.enableIMEPersonalizedLearning,
    );
  }
}
