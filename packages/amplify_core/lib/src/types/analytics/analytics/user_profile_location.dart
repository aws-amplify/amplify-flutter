// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Location data of a user.
class UserProfileLocation {
  const UserProfileLocation({
    this.latitude,
    this.longitude,
    this.postalCode,
    this.city,
    this.region,
    this.country,
  });

  final double? latitude;
  final double? longitude;
  final String? postalCode;
  final String? city;
  final String? region;
  final String? country;

  Map<String, Object?> getAllProperties() => {
        if (latitude != null) 'latitude': latitude,
        if (longitude != null) 'longitude': longitude,
        if (postalCode != null) 'postalCode': postalCode,
        if (city != null) 'city': city,
        if (region != null) 'region': region,
        if (country != null) 'country': country,
      };
}
