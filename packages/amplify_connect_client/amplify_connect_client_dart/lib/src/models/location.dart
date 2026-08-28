// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

/// {@template amplify_connect_client.location}
/// Customer-supplied location attached to a `UserProfile`.
///
/// Mirrors the `location` object in the identify contract (mapped to a Customer
/// Profiles Address server-side).
/// {@endtemplate}
@immutable
class Location {
  /// {@macro amplify_connect_client.location}
  const Location({this.city, this.country, this.postalCode, this.region});

  /// The city.
  final String? city;

  /// The country.
  final String? country;

  /// The postal code.
  final String? postalCode;

  /// The administrative area (for example a state or province).
  final String? region;

  /// Serializes to the endpoint's `location` shape, omitting null fields.
  Map<String, dynamic> toJson() => {
    'city': ?city,
    'country': ?country,
    'postalCode': ?postalCode,
    'region': ?region,
  };
}
