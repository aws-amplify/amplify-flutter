// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/app_info.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// {@macro amplify_analytics_pinpoint.app_info_provider}
Future<AppInfo> getAppInfo() async {
  final info = await PackageInfo.fromPlatform();
  return AppInfo(info.appName, info.packageName, info.version);
}
