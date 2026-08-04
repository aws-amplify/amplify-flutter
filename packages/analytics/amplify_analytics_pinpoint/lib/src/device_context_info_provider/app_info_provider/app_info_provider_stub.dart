// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/app_info.dart';

/// {@template amplify_analytics_pinpoint.app_info_provider}
/// Returns [AppInfo] for the current platform (app name, package name,
/// version). Split by platform so the web build never imports
/// `package_info_plus`, which transitively pulls in `dart:io` and breaks
/// wasm compatibility.
/// {@endtemplate}
Future<AppInfo> getAppInfo() async {
  throw UnsupportedError(
    'No suitable implementation was found on this platform.',
  );
}
