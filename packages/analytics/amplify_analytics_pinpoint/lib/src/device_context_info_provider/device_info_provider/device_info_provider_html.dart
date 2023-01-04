// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: implementation_imports

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/device_info_provider/device_info.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_core/src/platform/platform_html.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';

/// {@macro amplify_analytics_pinpoint.device_info_provider}
Future<DeviceInfo> getDeviceInfo() async {
  final deviceInfo = DeviceInfoPlugin();
  try {
    final webInfo = await deviceInfo.webBrowserInfo;
    return DeviceInfo(
      make: webInfo.vendor, // vendor of the browser
      model: webInfo.browserName.toString(),
      modelVersion: osIdentifier.split('/')[1], // version of browser
      platform: DevicePlatform.web,
      platformVersion: webInfo.platform, // version of browser?
    );
  } on PlatformException {
    return const DeviceInfo(
      platform: DevicePlatform.unknown,
    );
  }
}
