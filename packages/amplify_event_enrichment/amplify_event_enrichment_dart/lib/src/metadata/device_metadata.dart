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

  /// Platform name (e.g. "iOS", "Android").
  final String? platform;

  /// Platform OS version.
  final String? platformVersion;

  /// Device manufacturer (e.g. "Apple", "Samsung").
  final String? manufacturer;

  /// Device model (e.g. "iPhone", "SM-G900F").
  final String? model;

  /// Device locale code (e.g. "en_US").
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
