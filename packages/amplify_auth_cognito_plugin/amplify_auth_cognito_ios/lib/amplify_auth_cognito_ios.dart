
import 'dart:async';

import 'package:flutter/services.dart';

class AmplifyAuthCognitoIos {
  static const MethodChannel _channel = MethodChannel('amplify_auth_cognito_ios');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
