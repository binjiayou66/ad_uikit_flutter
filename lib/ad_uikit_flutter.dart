import 'dart:async';

import 'package:flutter/services.dart';

export 'package:ad_uikit_flutter/bottom_sheet/ad_bottom_sheet.dart';
export 'package:ad_uikit_flutter/button/ad_button.dart';
export 'package:ad_uikit_flutter/color/ad_color.dart';
export 'package:ad_uikit_flutter/config/ad_config.dart';
export 'package:ad_uikit_flutter/dialog/ad_dialog.dart';
export 'package:ad_uikit_flutter/popup/ad_popup.dart';
export 'package:ad_uikit_flutter/tabbar/ad_tabbar.dart';
export 'package:ad_uikit_flutter/text/ad_text.dart';
export 'package:ad_uikit_flutter/textfield/ad_textfield.dart';

class ADUIKitFlutter {
  static const MethodChannel _channel = MethodChannel('ad_uikit_flutter');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
