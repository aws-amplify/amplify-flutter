// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:io';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';

import 'device_info.dart';

/// Provides DeviceInfo from Flutter -> Dart
class DeviceInfoProvider {
  /// Retrieve DeviceInfo
  Future<DeviceInfo> getDeviceInfo() async {
    final deviceInfo = DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
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
