import 'dart:async';

import 'package:flutter/services.dart';

class PikaLocation {
  static const MethodChannel _channel =
      const MethodChannel('pika_location');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
