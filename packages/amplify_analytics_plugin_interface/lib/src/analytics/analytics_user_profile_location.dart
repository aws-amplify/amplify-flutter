/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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
