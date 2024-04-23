// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/analytics/analytics/custom_properties.dart';
import 'package:amplify_core/src/types/analytics/analytics/user_profile_location.dart';

/// User specific data.
class UserProfile {
  const UserProfile({
    this.name,
    this.email,
    this.plan,
    this.location,
    this.customProperties,
  });

  final String? name;
  final String? email;
  final String? plan;
  final UserProfileLocation? location;
  final CustomProperties? customProperties;
}
