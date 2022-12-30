// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

class AnalyticsUserProfileLocation {
  double? latitude;
  double? longitude;
  String? postalCode;
  String? city;
  String? region;
  String? country;

  AnalyticsUserProfileLocation({
    this.latitude,
    this.longitude,
    this.postalCode,
    this.city,
    this.region,
    this.country,
  });

  Map<String, Object?> getAllProperties() => {
        if (latitude != null) 'latitude': latitude,
        if (longitude != null) 'longitude': longitude,
        if (postalCode != null) 'postalCode': postalCode,
        if (city != null) 'city': city,
        if (region != null) 'region': region,
        if (country != null) 'country': country,
      };
}
