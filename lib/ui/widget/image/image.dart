import 'package:flutter/cupertino.dart';

extension ImageEX on Image {
  Image fit(BoxFit? fit) {
    return copyWith(fit: fit);
  }

  Image cover() {
    return copyWith(fit: BoxFit.cover);
  }

  Image contain() {
    return copyWith(fit: BoxFit.contain);
  }

  Image setImageSize({double? width, double? height}) {
    return copyWith(width: width, height: height);
  }

  Image copyWith({
    Key? key,
    ImageProvider? image,
    Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
    Widget Function(BuildContext, Widget, ImageChunkEvent?)? loadingBuilder,
    Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
    String? semanticLabel,
    bool? excludeFromSemantics,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    ImageRepeat? repeat,
    Rect? centerSlice,
    bool? matchTextDirection,
    bool? gaplessPlayback,
    bool? isAntiAlias,
    FilterQuality? filterQuality,
  }) {
    return Image(
      key: key ?? this.key,
      image: image ?? this.image,
      frameBuilder: frameBuilder ?? this.frameBuilder,
      loadingBuilder: loadingBuilder ?? this.loadingBuilder,
      errorBuilder: errorBuilder ?? this.errorBuilder,
      semanticLabel: semanticLabel ?? this.semanticLabel,
      excludeFromSemantics: excludeFromSemantics ?? this.excludeFromSemantics,
      width: width ?? this.width,
      height: height ?? this.height,
      color: color ?? this.color,
      opacity: opacity ?? this.opacity,
      colorBlendMode: colorBlendMode ?? this.colorBlendMode,
      fit: fit ?? this.fit,
      alignment: alignment ?? this.alignment,
      repeat: repeat ?? this.repeat,
      centerSlice: centerSlice ?? this.centerSlice,
      matchTextDirection: matchTextDirection ?? this.matchTextDirection,
      gaplessPlayback: gaplessPlayback ?? this.gaplessPlayback,
      isAntiAlias: isAntiAlias ?? this.isAntiAlias,
      filterQuality: filterQuality ?? this.filterQuality,
    );
  }
}
