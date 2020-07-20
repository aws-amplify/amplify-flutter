import 'dart:async';

import 'package:flutter/services.dart';

class AmplifyStorageS3 {
  static const MethodChannel _channel =
      const MethodChannel('amplify_storage_s3');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
