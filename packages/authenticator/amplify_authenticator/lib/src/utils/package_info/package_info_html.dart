// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:package_info_plus_platform_interface/package_info_platform_interface.dart';

/// {@macro amplify_authenticator.get_app_name}
///
/// Reads from [PackageInfoPlatform.instance], which the `package_info_plus`
/// web plugin registers. Importing only the platform interface (not the
/// `package_info_plus` entrypoint) keeps `dart:io` out of the web build.
Future<String> getAppName() async {
  final info = await PackageInfoPlatform.instance.getAll();
  return info.appName;
}
