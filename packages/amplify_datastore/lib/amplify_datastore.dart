
import 'dart:async';

import 'package:flutter/services.dart';

class AmplifyDatastore {
  static const MethodChannel _channel =
      const MethodChannel('amplify_datastore');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
