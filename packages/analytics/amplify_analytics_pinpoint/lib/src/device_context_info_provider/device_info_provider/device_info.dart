// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';

/// {@template amplify_analytics_pinpoint.device_info}
/// Data representation of DeviceInfo required for Pinpoint EndpointDemographic.
///
/// For more details see Pinpoint [Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html) online spec.
/// {@endtemplate}
class DeviceInfo {
  /// {@macro amplify_analytics_pinpoint.device_info}
  const DeviceInfo({
    this.make,
    this.model,
    this.modelVersion,
    this.platform,
    this.platformVersion,
  });

  /// Manufacturer.
  final String? make;

  /// Model name or number of device.
  final String? model;

  /// Model version of device.
  final String? modelVersion;

  /// Platform: iOS/Android, etc.
  final DevicePlatform? platform;

  /// Version of platform.
  final String? platformVersion;
}
