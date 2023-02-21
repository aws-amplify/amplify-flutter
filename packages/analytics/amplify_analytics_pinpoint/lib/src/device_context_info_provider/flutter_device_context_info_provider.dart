// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/app_info.dart';
import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/device_info_provider/device_info_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// {@template amplify_analytics_pinpoint.flutter_device_context_info_provider}
/// Provide information required for Pinpoint EndpointDemographic object.
///
/// For more details see Pinpoint [Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html) online spec.
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
