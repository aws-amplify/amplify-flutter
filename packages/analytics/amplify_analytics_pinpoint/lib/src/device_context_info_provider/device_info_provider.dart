import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class DeviceInfo {
  String? make; // manufacturer
  String? model; // device model?
  String? modelVersion;
  String? platform; // web/ios/android
  String? platformVersion;

  DeviceInfo(this.make, this.model, this.modelVersion, this.platform,
      this.platformVersion);
}

class DeviceInfoProvider {
  static Future<DeviceInfo> getDeviceData() async {
    var deviceInfo = DeviceInfoPlugin();

    try {
      if (kIsWeb) {
        var webInfo = await deviceInfo.webBrowserInfo;
        return DeviceInfo(
            webInfo.vendor, // vendor of the browser
            webInfo.browserName.toString(),
            webInfo.appVersion, // version of browser
            'WEB',
            webInfo.platform // version of browser?
            );
      } else if (Platform.isAndroid) {
        var androidInfo = await deviceInfo.androidInfo;
        return DeviceInfo(androidInfo.manufacturer, androidInfo.model, null,
            'ANDROID', androidInfo.version.release // version string
            );
      } else if (Platform.isIOS) {
        var iosInfo = await deviceInfo.iosInfo;
        return DeviceInfo(null, iosInfo.model, null, 'IOS',
            iosInfo.systemVersion // os version
            );
      } else if (Platform.isLinux) {
        var linuxInfo = await deviceInfo.linuxInfo;
        return DeviceInfo(
            null, linuxInfo.variant, null, 'LINUX', linuxInfo.prettyName);
      } else if (Platform.isMacOS) {
        var macInfo = await deviceInfo.macOsInfo;
        return DeviceInfo(
            null, macInfo.model, null, 'MACOS', macInfo.osRelease);
      } else if (Platform.isWindows) {
        return DeviceInfo(
          null,
          null,
          null,
          'WINDOWS',
          null,
        );
      }
    } on PlatformException {
      return DeviceInfo(null, null, null, 'UNKNOWN', null);
    }
    return DeviceInfo(null, null, null, 'UNKNOWN', null);
  }
}
