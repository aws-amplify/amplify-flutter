import 'dart:io';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// DeviceInfo required for Pinpoint EndpointDemographic:
/// https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html
class DeviceInfo {
  /// Manufacturer
  String? make;

  /// Model name or number of device
  String? model;

  /// Model version of device
  String? modelVersion;

  /// Platform: iOS/Android, etc.
  DevicePlatform? platform;

  /// Version of platform
  String? platformVersion;

  ///
  DeviceInfo({
    this.make,
    this.model,
    this.modelVersion,
    this.platform,
    this.platformVersion,
  });
}

/// Provides DeviceInfo from Flutter -> Dart
class DeviceInfoProvider {
  ///
  static Future<DeviceInfo> getDeviceInfo() async {
    final deviceInfo = DeviceInfoPlugin();

    try {
      if (kIsWeb) {
        final webInfo = await deviceInfo.webBrowserInfo;
        return DeviceInfo(
          make: webInfo.vendor, // vendor of the browser
          model: webInfo.browserName.toString(),
          modelVersion: webInfo.appVersion, // version of browser
          platform: DevicePlatform.web,
          platformVersion: webInfo.platform, // version of browser?
        );
      } else if (Platform.isAndroid) {
        final androidInfo = await deviceInfo.androidInfo;
        return DeviceInfo(
          make: androidInfo.manufacturer,
          model: androidInfo.model,
          modelVersion: null,
          platform: DevicePlatform.android,
          platformVersion: androidInfo.version.release, // version string
        );
      } else if (Platform.isIOS) {
        final iosInfo = await deviceInfo.iosInfo;
        return DeviceInfo(
          make: null,
          model: iosInfo.model,
          modelVersion: null,
          platform: DevicePlatform.iOS,
          platformVersion: iosInfo.systemVersion, // os version
        );
      } else if (Platform.isLinux) {
        final linuxInfo = await deviceInfo.linuxInfo;
        return DeviceInfo(
          make: null,
          model: linuxInfo.variant,
          modelVersion: null,
          platform: DevicePlatform.linux,
          platformVersion: linuxInfo.prettyName,
        );
      } else if (Platform.isMacOS) {
        final macInfo = await deviceInfo.macOsInfo;
        return DeviceInfo(
          make: null,
          model: macInfo.model,
          modelVersion: null,
          platform: DevicePlatform.macOS,
          platformVersion: macInfo.osRelease,
        );
      } else if (Platform.isWindows) {
        return DeviceInfo(
          make: null,
          model: null,
          modelVersion: null,
          platform: DevicePlatform.windows,
          platformVersion: null,
        );
      }
    } on PlatformException {
      return DeviceInfo(
        platform: DevicePlatform.unknown,
      );
    }
    return DeviceInfo(
      platform: DevicePlatform.unknown,
    );
  }
}
