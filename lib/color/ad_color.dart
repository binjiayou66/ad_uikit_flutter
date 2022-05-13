import 'package:flutter/material.dart';

class ADColors {
  /// 1E8DFF
  static const Color primary = Color(0xFF1E8DFF);

  /// 2C86E0
  static const Color primaryHighLight = Color(0xFF2C86E0);

  /// C1DFFD
  static const Color primaryDisable = Color(0xFFC1DFFD);

  /// 000000
  static const Color black = Color(0xFF000000);

  /// FFFFFF
  static const Color white = Color(0xFFFFFFFF);

  /// 84C01A
  static const Color success = Color(0xFF84C01A);

  /// E49539
  static const Color warning = Color(0xFFE49539);

  /// DF3B3B
  static const Color danger = Color(0xFFDF3B3B);

  /// 5F6B7C
  static const Color info = Color(0xFFF56B7C);

  /// E6E6E6
  static const Color divider = Color(0xFFE6E6E6);

  /// EEEEEE
  static const Color background = Color(0xFFEEEEEE);

  /// FFFFFF
  static const Color disabled = Color(0xAAFFFFFF);

  /// 262626
  static const Color text1 = Color(0xFF262626);

  /// 595959
  static const Color text2 = Color(0xFF595959);

  /// 8C8C8C
  static const Color text3 = Color(0xFF8C8C8C);

  /// BFBFBF
  static const Color text4 = Color(0xFFBFBFBF);

  /// D6D6D6
  static const Color text5 = Color(0xFFD6D6D6);

  /// 262626
  static const Color textBlack = Color(0xFF262626);

  /// 595959
  static const Color textDark = Color(0xFF595959);

  /// 8C8C8C
  static const Color textGray = Color(0xFF8C8C8C);

  /// BFBFBF
  static const Color textLight = Color(0xFFBFBFBF);

  /// D6D6D6
  static const Color textDisable = Color(0xFFD6D6D6);

  /// D6D6D6
  static const Color textPlaceholder = Color(0xFFD6D6D6);

  /// E0E0E0
  static const Color dividerDark = Color(0xFFE0E0E0);

  /// EBEBEB
  static const Color dividerLight = Color(0xFFEBEBEB);

  /// F5F5F5
  static const Color backgroundDark = Color(0xFFF5F5F5);

  /// F7F8FA
  static const Color backgroundLight = Color(0xFFF7F8FA);

  /// 1BBF75
  static const Color darkGreen = Color(0xFF1BBF75);

  /// 84C01A
  static const Color lightGreen = Color(0xFF84C01A);

  /// 4991FD
  static const Color blue = Color(0xFF4991FD);

  /// F3B3B
  static const Color red = Color(0xFFDF3B3B);

  /// FA9928
  static const Color orange = Color(0xFFFA9928);

  /// E8F8F1
  static const Color cyanWhite = Color(0xFFE8F8F1);

  /// EDF4FE
  static const Color blueWhite = Color(0xFFEDF4FE);

  /// FEECEC
  static const Color pinkWhite = Color(0xFFFEECEC);

  /// F4FAE8
  static const Color yellowWhite = Color(0xFFF4FAE8);

  /// FFF7E8
  static const Color yellowWhite1 = Color(0xFFFFF7E8);

  /// FFFBE8
  static const Color yellowWhite2 = Color(0xFFFFFBE8);

  /// from value
  static Color fromValue(int value) => Color(value);

  /// hexToColor
  static Color hexToColor(String hexString) {
    try {
      final buffer = StringBuffer();
      if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
      buffer.write(hexString.replaceFirst('#', ''));
      return Color(int.parse(buffer.toString(), radix: 16));
    } catch (e) {
      return Colors.white;
    }
  }
}
