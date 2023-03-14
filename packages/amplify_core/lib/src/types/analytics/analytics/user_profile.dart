// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/analytics/analytics/custom_properties.dart';
import 'package:amplify_core/src/types/analytics/analytics/user_profile_location.dart';

class UserProfile {
  String? name;
  String? email;
  String? plan;
  UserProfileLocation? location;
  CustomProperties? customProperties;

  UserProfile({
    this.name,
    this.email,
    this.plan,
    this.location,
    this.customProperties,
  });
}
