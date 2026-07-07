// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

/// {@template amplify_connect_client.demographic}
/// Device/app demographic information attached to a `UserProfile`.
///
/// Mirrors the `demographic` object in the identify endpoint contract.
/// {@endtemplate}
@immutable
class Demographic {
  /// {@macro amplify_connect_client.demographic}
  const Demographic({
    this.appVersion,
    this.locale,
    this.make,
    this.model,
    this.modelVersion,
    this.platform,
    this.platformVersion,
    this.timezone,
  });

  /// The app version.
  final String? appVersion;

  /// The device locale (for example `en_US`).
  final String? locale;

  /// The device manufacturer.
  final String? make;

  /// The device model.
  final String? model;

  /// The device model version.
  final String? modelVersion;

  /// The OS platform (for example `Android`, `iOS`).
  final String? platform;

  /// The OS platform version.
  final String? platformVersion;

  /// The device timezone.
  final String? timezone;

  /// Serializes to the endpoint's `demographic` shape, omitting null fields.
  Map<String, dynamic> toJson() => {
    'appVersion': ?appVersion,
    'locale': ?locale,
    'make': ?make,
    'model': ?model,
    'modelVersion': ?modelVersion,
    'platform': ?platform,
    'platformVersion': ?platformVersion,
    'timezone': ?timezone,
  };
}
