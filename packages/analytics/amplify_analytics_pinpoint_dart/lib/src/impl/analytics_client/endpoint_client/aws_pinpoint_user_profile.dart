// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_analytics_pinpoint_dart.aws_pinpoint_user_profile}
/// Extends the category-defined UserProfile class to
/// include features supported relevant to Pinpoint only.
/// {@endtemplate}
class AWSPinpointUserProfile extends UserProfile {
  /// {@macro amplify_analytics_pinpoint_dart.aws_pinpoint_user_profile}
  AWSPinpointUserProfile({
    super.name,
    super.email,
    super.plan,
    super.location,
    super.customProperties,
    this.userAttributes,
  });

  /// Analytics attributes for the Pinpoint User.
  final Map<String, List<String>>? userAttributes;
}
