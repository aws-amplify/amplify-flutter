import 'dart:async';

import 'package:amplify_core/types/exception/AmplifyException.dart';
import 'package:amplify_core/types/exception/AmplifyExceptionMessages.dart';
import 'package:flutter/services.dart';
export './types/index.dart';

class AmplifyCore {
  static const MethodChannel _channel = const MethodChannel('amplify_core');

  static Future<String> get platformVersion async {
    final String? version =
        await (_channel.invokeMethod<String>('getPlatformVersion'));
    if (version == null)
      throw new AmplifyException(
          AmplifyExceptionMessages.nullReturnedFromMethodChannel);
    return version;
  }
}
