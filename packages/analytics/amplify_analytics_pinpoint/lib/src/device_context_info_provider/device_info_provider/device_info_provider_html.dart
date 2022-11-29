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
