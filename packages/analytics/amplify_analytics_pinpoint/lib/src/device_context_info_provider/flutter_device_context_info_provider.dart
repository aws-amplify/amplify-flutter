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

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/app_info.dart';
import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/device_info_provider/device_info_provider.dart';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// {@template amplify_analytics_pinpoint.flutter_device_context_info_provider}
/// Provide information required for Pinpoint EndpointDemographic object
///
/// For more details see Pinpoint [Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html)online spec.
/// {@endtemplate}
class FlutterDeviceContextInfoProvider implements DeviceContextInfoProvider {
  /// {@macro amplify_analytics_pinpoint.flutter_device_context_info_provider}
  const FlutterDeviceContextInfoProvider();

  @override
  Future<DeviceContextInfo> getDeviceInfoDetails() async {
    final appInfo = await _getAppInfo();
    final deviceInfo = await getDeviceInfo();
    return DeviceContextInfo(
      countryCode: WidgetsBinding.instance.window.locale.countryCode,
      locale: WidgetsBinding.instance.window.locale.toString(),
      appName: appInfo.appName,
      appPackageName: appInfo.packageName,
      appVersion: appInfo.version,
      make: deviceInfo.make,
      model: deviceInfo.model,
      modelVersion: deviceInfo.modelVersion,
      platform: deviceInfo.platform,
      platformVersion: deviceInfo.platformVersion,
    );
  }

  Future<AppInfo> _getAppInfo() async {
    final info = await PackageInfo.fromPlatform();
    return AppInfo(
      info.appName,
      info.packageName,
      info.version,
    );
  }
}
