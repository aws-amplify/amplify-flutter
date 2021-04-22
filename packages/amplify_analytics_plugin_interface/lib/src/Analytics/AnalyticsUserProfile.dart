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

import '../../amplify_analytics_plugin_interface.dart';

class AnalyticsUserProfile {
  String? name;
  String? email;
  String? plan;
  AnalyticsUserProfileLocation? location;
  AnalyticsProperties? properties;

  AnalyticsUserProfile(
      {this.name, this.email, this.plan, this.location, analyticsProperties})
      : this.properties = analyticsProperties;

  Map<String, Object?> getAllProperties() {
    Map<String, Object?> allProperties = {
      'name': name,
      'email': email,
      'plan': plan,
      'location': location?.getAllProperties(),
      'propertiesMap': properties?.getAllProperties(),
      'propertiesTypesMap': properties?.getAllPropertiesTypes()
    };
    allProperties.removeWhere((_, v) => v == null);
    return allProperties;
  }
}
