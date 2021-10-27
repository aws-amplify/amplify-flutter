import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class AmplifyTestFlutter {
  static const MethodChannel _channel = MethodChannel('amplify_test_flutter');

  static Future<void> reset() {
    if (Platform.isAndroid) {
      throw UnsupportedError('Amplify.reset is not available on Android');
    }
    return _channel.invokeMethod('reset');
  }
}
