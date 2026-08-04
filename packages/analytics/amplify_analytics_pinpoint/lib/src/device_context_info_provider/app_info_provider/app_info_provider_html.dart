// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/app_info.dart';
import 'package:package_info_plus_platform_interface/package_info_platform_interface.dart';

/// {@macro amplify_analytics_pinpoint.app_info_provider}
///
/// Reads from [PackageInfoPlatform.instance], which the `package_info_plus`
/// web plugin registers. Importing only the platform interface (not the
/// `package_info_plus` entrypoint) keeps `dart:io` out of the web build.
Future<AppInfo> getAppInfo() async {
  final info = await PackageInfoPlatform.instance.getAll();
  return AppInfo(info.appName, info.packageName, info.version);
}
