import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

/// {@macro amplify_logging_cloudwatch.device_info}
Future<String?> getDeviceId() async {
  final deviceInfo = DeviceInfoPlugin();
  String? deviceID;
  try {
    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      deviceID = androidInfo.id;
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      deviceID = iosInfo.identifierForVendor ?? '';
    } else if (Platform.isLinux) {
      final linuxInfo = await deviceInfo.linuxInfo;
      deviceID = linuxInfo.machineId ?? '';
    } else if (Platform.isMacOS) {
      final macInfo = await deviceInfo.macOsInfo;
      deviceID = macInfo.systemGUID ?? '';
    } else if (Platform.isWindows) {
      final windowsInfo = await deviceInfo.windowsInfo;
      deviceID = windowsInfo.deviceId;
    }
  } on Exception {
    return null;
  }
  return deviceID;
}
