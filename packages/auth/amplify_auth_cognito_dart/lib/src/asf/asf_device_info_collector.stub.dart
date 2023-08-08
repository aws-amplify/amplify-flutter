// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.dart';

/// {@template amplify_auth_cognito_dart.asf.asf_device_info_stub}
/// The stub implementation of [NativeASFDeviceInfoCollector].
/// {@endtemplate}
final class ASFDeviceInfoPlatform extends NativeASFDeviceInfoCollector {
  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info_stub}
  ASFDeviceInfoPlatform();

  @override
  Future<String?> get applicationName => throw UnimplementedError();

  @override
  Future<String?> get applicationVersion => throw UnimplementedError();

  @override
  Future<String?> get deviceFingerprint => throw UnimplementedError();

  @override
  Future<String?> get deviceLanguage => throw UnimplementedError();

  @override
  Future<String?> get deviceName => throw UnimplementedError();

  @override
  Future<int?> get screenHeightPixels => throw UnimplementedError();

  @override
  Future<int?> get screenWidthPixels => throw UnimplementedError();

  @override
  Future<String?> get thirdPartyDeviceId => throw UnimplementedError();
}
