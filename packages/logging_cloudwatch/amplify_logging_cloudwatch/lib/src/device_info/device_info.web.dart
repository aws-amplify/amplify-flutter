import 'dart:html';

import 'package:amplify_core/amplify_core.dart';

const _localStorageKey = 'amplify-cloudwatch-logger-device-id';

/// {@macro amplify_logging_cloudwatch.device_info}
Future<String?> getDeviceId() async {
  var deviceID = window.localStorage[_localStorageKey];
  if (deviceID != null) {
    return deviceID;
  }
  deviceID = UUID.getUUID();
  window.localStorage.putIfAbsent(_localStorageKey, () => deviceID!);
  return deviceID;
}
