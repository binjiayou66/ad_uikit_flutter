import 'package:ad_uikit_flutter/color/ad_color.dart';
import 'package:ad_uikit_flutter/font/ad_font_size.dart';
import 'package:ad_uikit_flutter/font/ad_font_weight.dart';
import 'package:flutter/material.dart';

class ADConfig {
  /// 品牌主色
  static Color primary = ADColors.primary;

  /// 品牌主色高亮
  static Color primaryHighlight = ADColors.primaryHighLight;

  /// 品牌主色不可用
  static Color primaryDisable = ADColors.primaryDisable;

  /// 品牌次主色
  static Color subPrimary = ADColors.orange;

  // 正常字重
  static FontWeight fontWeightNormal = ADFontWeight.normal;

  /// 加粗字重
  static FontWeight fontWeightBold = ADFontWeight.bold;

  /// 细体字重
  static FontWeight fontWeightThin = ADFontWeight.thin;

  /// 一级标题文字大小
  static double fontSizeTitle1 = ADFontSize.title1;

  /// 二级标题文字大小
  static double fontSizeTitle2 = ADFontSize.title2;

  /// 一级正文文字大小
  static double fontSizeContent1 = ADFontSize.content1;

  /// 二级正文文字大小
  static double fontSizeContent2 = ADFontSize.content2;

  /// 一级提醒文字大小
  static double fontSizeTip1 = ADFontSize.tip1;

  /// 二级提醒文字大小
  static double fontSizeTip2 = ADFontSize.tip2;

  /// 文本黑色
  static Color fontColorBlack = ADColors.textBlack;

  /// 文本深灰
  static Color fontColorDark = ADColors.textDark;

  /// 文本灰色
  static Color fontColorGray = ADColors.textGray;

  /// 文本亮灰
  static Color fontColorLight = ADColors.textLight;

  /// 文本白色
  static Color fontColorWhite = ADColors.white;
}
