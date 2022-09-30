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

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/app_info_provider.dart';

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/device_info_provider/device_info_provider.dart';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:flutter/material.dart';

/// Provide information required for Pinpoint EndpointDemographic object
/// https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html
class FlutterDeviceContextInfoProvider implements DeviceContextInfoProvider {
  /// No work is done when instantiating.
  const FlutterDeviceContextInfoProvider();

  @override
  Future<DeviceContextInfo> getDeviceInfoDetails() async {
    var appInfo = await AppInfoProvider.getAppData();
    var deviceInfo = await DeviceInfoProvider().getDeviceInfo();
    return DeviceContextInfo(
      countryCode: WidgetsBinding.instance.window.locale.countryCode,
      locale: WidgetsBinding.instance.window.locale.toString(),
      // https://github.com/dart-lang/sdk/issues/21758
      // Flutter timezone.name provides time dependent names ie. PDT/PST
      // which are not accepted by Pinpoint
      // Other packages require location objects (tz database) or don't work on all platforms
      // NOTE: all times sent to Pinpoint must be in UTC ... (DateTime.now().toUtc()...)
      timezone: 'UTC',
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
}
