
import 'dart:async';

import 'package:flutter/services.dart';

class MessageParser {
  static const MethodChannel _channel =
      const MethodChannel('message_parser');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
