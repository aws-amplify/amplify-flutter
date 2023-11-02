// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/device_info_provider/device_info.dart';

/// {@template amplify_analytics_pinpoint.device_info_provider}
/// Multi platform class that provides DeviceInfo from Flutter -> Dart.
/// Requires Flutter specific dependencies.
/// {@endtemplate}

Future<DeviceInfo> getDeviceInfo() async {
  throw UnsupportedError(
    'No suitable implementation was found on this platform.',
  );
}
