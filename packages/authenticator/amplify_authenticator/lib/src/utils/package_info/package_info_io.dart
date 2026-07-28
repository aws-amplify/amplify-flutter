// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:package_info_plus/package_info_plus.dart';

/// {@macro amplify_authenticator.get_app_name}
Future<String> getAppName() async {
  final info = await PackageInfo.fromPlatform();
  return info.appName;
}
