import 'dart:ui' as ui show TextHeightBehavior;
import 'package:ad_uikit_flutter/config/ad_config.dart';
import 'package:flutter/material.dart';

class ADText extends StatelessWidget {
  final String? data;
  final InlineSpan? textSpan;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final ui.TextHeightBehavior? textHeightBehavior;

  const ADText(
    String this.data, {
    Key? key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  })  : textSpan = null,
        super(key: key);

  const ADText.rich(
    InlineSpan this.textSpan, {
    Key? key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  })  : data = null,
        super(key: key);

  ADText.title1Main(
    InlineSpan this.textSpan, {
    Key? key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  })  : data = null,
        style = TextStyle(
          color: ADConfig.fontColorMain,
          fontSize: ADConfig.fontSizeTitle1,
          fontWeight: ADConfig.fontWeightNormal,
        ),
        super(key: key);

  ADText.title2Main(
    InlineSpan this.textSpan, {
    Key? key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  })  : data = null,
        style = TextStyle(
          color: ADConfig.fontColorMain,
          fontSize: ADConfig.fontSizeTitle2,
          fontWeight: ADConfig.fontWeightNormal,
        ),
        super(key: key);

  ADText.title1MainBold(
    InlineSpan this.textSpan, {
    Key? key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  })  : data = null,
        style = TextStyle(
          color: ADConfig.fontColorMain,
          fontSize: ADConfig.fontSizeTitle1,
          fontWeight: ADConfig.fontWeightBold,
        ),
        super(key: key);

  ADText.title2MainBold(
    InlineSpan this.textSpan, {
    Key? key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  })  : data = null,
        style = TextStyle(
          color: ADConfig.fontColorMain,
          fontSize: ADConfig.fontSizeTitle2,
          fontWeight: ADConfig.fontWeightBold,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return Text.rich(
        textSpan ?? const TextSpan(text: ''),
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
      );
    }
    return Text(
      data ?? '',
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}
