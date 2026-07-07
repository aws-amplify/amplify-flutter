// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

/// {@template amplify_connect_client.location}
/// Location information attached to a `UserProfile`.
///
/// Mirrors the `location` object in the identify endpoint contract.
/// {@endtemplate}
@immutable
class Location {
  /// {@macro amplify_connect_client.location}
  const Location({
    this.city,
    this.country,
    this.latitude,
    this.longitude,
    this.postalCode,
    this.region,
  });

  /// The city.
  final String? city;

  /// The country.
  final String? country;

  /// The latitude.
  final double? latitude;

  /// The longitude.
  final double? longitude;

  /// The postal code.
  final String? postalCode;

  /// The region (for example a state or province).
  final String? region;

  /// Serializes to the endpoint's `location` shape, omitting null fields.
  Map<String, dynamic> toJson() => {
    'city': ?city,
    'country': ?country,
    'latitude': ?latitude,
    'longitude': ?longitude,
    'postalCode': ?postalCode,
    'region': ?region,
  };
}
