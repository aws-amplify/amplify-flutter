// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/analytics/analytics/analytics_properties.dart';
import 'package:amplify_core/src/types/analytics/analytics/analytics_user_profile_location.dart';

class AnalyticsUserProfile {
  String? name;
  String? email;
  String? plan;
  AnalyticsUserProfileLocation? location;
  AnalyticsProperties? properties;

  AnalyticsUserProfile({
    this.name,
    this.email,
    this.plan,
    this.location,
    AnalyticsProperties? analyticsProperties,
  }) : properties = analyticsProperties;

  Map<String, Object?> getAllProperties() => {
        if (name != null) 'name': name,
        if (email != null) 'email': email,
        if (plan != null) 'plan': plan,
        if (location != null) 'location': location!.getAllProperties(),
        if (properties != null) 'propertiesMap': properties!.getAllProperties(),
        if (properties != null)
          'propertiesTypesMap': properties!.getAllPropertiesTypes(),
      };
}
