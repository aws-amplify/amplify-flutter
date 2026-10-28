// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_event_enrichment.device_metadata}
/// Device-level metadata stamped on every event.
/// {@endtemplate}
@immutable
final class DeviceMetadata with AWSEquatable<DeviceMetadata>, AWSDebuggable {
  /// {@macro amplify_event_enrichment.device_metadata}
  const DeviceMetadata({
    this.platform,
    this.platformVersion,
    this.manufacturer,
    this.model,
    this.locale,
  });

  /// Platform name (e.g. "iOS") serialized as `device.platform.name`.
  /// `device.platform` is omitted when this and [platformVersion] are null.
  final String? platform;

  /// OS version serialized as `device.platform.version` when non-null.
  final String? platformVersion;

  /// Manufacturer (e.g. "Apple") serialized as `device.make` when non-null.
  final String? manufacturer;

  /// Model (e.g. "iPhone") serialized as `device.model` when non-null.
  final String? model;

  /// Locale code (e.g. "en_US") serialized as `device.locale.code` when
  /// non-null.
  final String? locale;

  @override
  List<Object?> get props => [
    platform,
    platformVersion,
    manufacturer,
    model,
    locale,
  ];

  @override
  String get runtimeTypeName => 'DeviceMetadata';
}
