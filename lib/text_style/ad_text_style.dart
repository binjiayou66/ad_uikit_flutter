import 'dart:ui' as ui show Shadow, FontFeature, TextLeadingDistribution;
import 'package:ad_uikit_flutter/config/ad_config.dart';
import 'package:flutter/material.dart';

class ADTextStyle extends TextStyle {
  ADTextStyle({
    bool inherit = true,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) : super(
          inherit: inherit,
          color: color,
          backgroundColor: backgroundColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          textBaseline: textBaseline,
          height: height,
          leadingDistribution: leadingDistribution,
          locale: locale,
          foreground: foreground,
          background: background,
          shadows: shadows,
          fontFeatures: fontFeatures,
          decoration: decoration,
          decorationStyle: decorationStyle,
          decorationThickness: decorationThickness,
          debugLabel: debugLabel,
          fontFamily: fontFamily,
          fontFamilyFallback: fontFamilyFallback,
          package: package,
          overflow: overflow,
        );

  ///
  static TextStyle title1Primary({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle1,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle title1PrimaryBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle1,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle title1Black({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle1,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle title1BlackBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle1,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle title1White({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle1,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle title1WhiteBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle1,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle title2Primary({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle2,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle title2PrimaryBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle2,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle title2Black({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle2,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle title2BlackBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle2,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle title2White({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle2,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle title2WhiteBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTitle2,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content1Primary({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent1,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content1PrimaryBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent1,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content1Black({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent1,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content1BlackBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent1,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content1Dark({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent1,
        color: ADConfig.fontColorDark,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content1Gray({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent1,
        color: ADConfig.fontColorGray,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content1Light({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent1,
        color: ADConfig.fontColorLight,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content1White({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent1,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content1WhiteBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent1,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content2Primary({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent2,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content2PrimaryBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent2,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content2Black({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent2,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content2BlackBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent2,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content2Dark({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent2,
        color: ADConfig.fontColorDark,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content2Gray({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent2,
        color: ADConfig.fontColorGray,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content2Light({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent2,
        color: ADConfig.fontColorLight,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content2White({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent2,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle content2WhiteBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeContent2,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip1Primary({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip1,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip1PrimaryBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip1,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip1Black({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip1,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip1BlackBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip1,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip1Dark({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip1,
        color: ADConfig.fontColorDark,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip1Gray({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip1,
        color: ADConfig.fontColorGray,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip1Light({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip1,
        color: ADConfig.fontColorLight,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip1White({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip1,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip1WhiteBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip1,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip2Primary({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip2,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip2PrimaryBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip2,
        color: ADConfig.primary,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip2Black({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip2,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip2BlackBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip2,
        color: ADConfig.fontColorBlack,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip2Dark({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip2,
        color: ADConfig.fontColorDark,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip2Gray({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip2,
        color: ADConfig.fontColorGray,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip2Light({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip2,
        color: ADConfig.fontColorLight,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip2White({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip2,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightNormal,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );

  ///
  static TextStyle tip2WhiteBold({
    double? height,
    TextOverflow? overflow,
    Locale? locale,
    TextBaseline? textBaseline,
  }) =>
      ADTextStyle(
        fontSize: ADConfig.fontSizeTip2,
        color: ADConfig.fontColorWhite,
        fontWeight: ADConfig.fontWeightBold,
        height: height,
        overflow: overflow,
        locale: locale,
        textBaseline: textBaseline,
      );
}
