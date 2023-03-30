// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/device_context_info_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/device_platform.dart';

final mockDeviceContextInfo = DeviceContextInfo(
  countryCode: 'countryCode',
  locale: 'locale',
  timezone: 'timezone',
  appName: 'appName',
  appPackageName: 'appPackageName',
  appVersion: 'appVersion',
  make: 'make',
  model: 'model',
  modelVersion: 'modelVersion',
  platformVersion: 'platformVersion',
  platform: DevicePlatform.iOS,
);
