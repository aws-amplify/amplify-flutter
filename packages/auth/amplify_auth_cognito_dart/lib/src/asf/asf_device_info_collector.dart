// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/asf/asf_context_data.dart';
import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.stub.dart'
    if (dart.library.io) 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.vm.dart'
    if (dart.library.js_util) 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.js.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/platform/platform.dart';
import 'package:clock/clock.dart';
import 'package:meta/meta.dart';

typedef _NativeDeviceInfo = (
  String? deviceName,
  String? thirdPartyDeviceId,
  String? deviceFingerprint,
  String? applicationName,
  String? applicationVersion,
  String? deviceLanguage,
  String? deviceOsReleaseVersion,
  int? screenHeightPixels,
  int? screenWidthPixels,
);

/// {@template amplify_auth_cognito_dart.asf.asf_device_info_collector}
/// Retrieves context data as required for advanced security features (ASF).
/// {@endtemplate}
abstract base class ASFDeviceInfoCollector {
  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info_collector}
  factory ASFDeviceInfoCollector() = ASFDeviceInfoPlatform;

  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info_collector}
  const ASFDeviceInfoCollector.base();

  /// {@macro amplify_auth_cognito_dart.asf.context_data.client_timezone}
  String get clientTimezone {
    final offset = clock.now().timeZoneOffset;
    final sign = switch (offset) {
      Duration.zero => '',
      Duration(:final isNegative) => isNegative ? '-' : '+',
    };
    final hours = offset.inHours.abs();
    const minutesPerHour = 60;
    final minutes = offset.inMinutes.abs() - (hours * minutesPerHour);
    return '$sign${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
  }

  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info_collector}
  Future<ASFContextData> getNativeContextData();
}

/// {@template amplify_auth_cognito_dart.asf.asf_device_info}
/// Platform-specific ASF device info provider.
/// {@endtemplate}
@internal
abstract base class NativeASFDeviceInfoCollector extends ASFDeviceInfoCollector
    with AWSDebuggable, AWSLoggerMixin {
  /// {@macro amplify_auth_cognito_dart.asf.asf_device_info}
  const NativeASFDeviceInfoCollector() : super.base();

  /// {@macro amplify_auth_cognito_dart.asf.context_data.device_name}
  @visibleForOverriding
  @visibleForTesting
  Future<String?> get deviceName;

  /// {@macro amplify_auth_cognito_dart.asf.context_data.third_party_device_id}
  @visibleForOverriding
  @visibleForTesting
  Future<String?> get thirdPartyDeviceId;

  /// {@macro amplify_auth_cognito_dart.asf.context_data.device_fingerprint}
  @visibleForOverriding
  @visibleForTesting
  Future<String?> get deviceFingerprint;

  /// {@macro amplify_auth_cognito_dart.asf.context_data.application_name}
  @visibleForOverriding
  @visibleForTesting
  Future<String?> get applicationName;

  /// {@macro amplify_auth_cognito_dart.asf.context_data.application_version}
  @visibleForOverriding
  @visibleForTesting
  Future<String?> get applicationVersion;

  /// {@macro amplify_auth_cognito_dart.asf.context_data.device_language}
  @visibleForOverriding
  @visibleForTesting
  Future<String?> get deviceLanguage;

  /// {@macro amplify_auth_cognito_dart.asf.context_data.device_os_release_version}
  @visibleForOverriding
  @visibleForTesting
  @protected
  Future<String?> get deviceOsReleaseVersion async => osIdentifier;

  /// {@macro amplify_auth_cognito_dart.asf.context_data.screen_height_pixels}
  @visibleForOverriding
  @visibleForTesting
  Future<int?> get screenHeightPixels;

  /// {@macro amplify_auth_cognito_dart.asf.context_data.screen_width_pixels}
  @visibleForOverriding
  @visibleForTesting
  Future<int?> get screenWidthPixels;

  @override
  @nonVirtual
  Future<ASFContextData> getNativeContextData() async {
    _NativeDeviceInfo data;
    try {
      data = await (
        this.deviceName,
        this.thirdPartyDeviceId,
        this.deviceFingerprint,
        this.applicationName,
        this.applicationVersion,
        this.deviceLanguage,
        this.deviceOsReleaseVersion,
        this.screenHeightPixels,
        this.screenWidthPixels,
      ).wait;
    } on ParallelWaitError<_NativeDeviceInfo, Record> catch (error) {
      // Allow for partial failures, in which case take the values which
      // succeeded and log the errors.
      final ParallelWaitError(:values, :errors) = error;
      logger.error('Error retrieving native context data: $errors');
      data = values;
    }

    final (
      deviceName,
      thirdPartyDeviceId,
      deviceFingerprint,
      applicationName,
      applicationVersion,
      deviceLanguage,
      deviceOsReleaseVersion,
      screenHeightPixels,
      screenWidthPixels,
    ) = data;
    return ASFContextData(
      deviceName: deviceName,
      thirdPartyDeviceId: thirdPartyDeviceId,
      deviceFingerprint: deviceFingerprint,
      clientTimezone: clientTimezone,
      applicationName: applicationName,
      applicationVersion: applicationVersion,
      deviceLanguage: deviceLanguage,
      deviceOsReleaseVersion: deviceOsReleaseVersion,
      screenHeightPixels: screenHeightPixels,
      screenWidthPixels: screenWidthPixels,
    );
  }

  @override
  String get runtimeTypeName => 'NativeASFDeviceInfoCollector';
}
