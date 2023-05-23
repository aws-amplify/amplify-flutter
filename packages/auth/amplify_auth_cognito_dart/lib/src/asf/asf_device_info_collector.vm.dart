// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.dart';
import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.linux.dart';
import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.macos.dart';
import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.windows.dart';

/// {@template amplify_auth_cognito_dart.asf.asf_device_info_vm}
/// The Dart VM implementation of [NativeASFDeviceInfoCollector].
/// {@endtemplate}
abstract base class ASFDeviceInfoPlatform extends NativeASFDeviceInfoCollector {
  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info_vm}
  factory ASFDeviceInfoPlatform() => switch (Platform.operatingSystem) {
        _ when Platform.isMacOS => ASFDeviceInfoMacOS(),
        _ when Platform.isLinux => ASFDeviceInfoLinux(),
        _ when Platform.isWindows => ASFDeviceInfoWindows(),
        final unsupportedOs =>
          throw UnsupportedError('Unsupported platform: $unsupportedOs'),
      };

  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info_vm}
  const ASFDeviceInfoPlatform.base();
}
