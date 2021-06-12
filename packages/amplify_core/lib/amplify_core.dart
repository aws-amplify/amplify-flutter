import 'dart:async';

import 'package:flutter/services.dart';

/// HUB
export 'src/hub/HubEvent.dart';
export 'src/hub/HubEventPayload.dart';
export 'src/hub/HubChannel.dart';

/// Exceptions
export 'src/exception/AmplifyException.dart';
export 'src/exception/AmplifyAlreadyConfiguredException.dart';
export 'src/exception/AmplifyExceptionMessages.dart';


class AmplifyCore {
  static const MethodChannel _channel = const MethodChannel('amplify_core');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
