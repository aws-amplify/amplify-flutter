// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_analytics_pinpoint_dart.aws_pinpoint_user_profile}
/// Extends the category-defined UserProfile class to
/// include features supported relevant to Pinpoint only.
/// {@endtemplate}
class AWSPinpointUserProfile extends AnalyticsUserProfile {
  /// {@macro amplify_analytics_pinpoint_dart.aws_pinpoint_user_profile}
  AWSPinpointUserProfile({
    super.name,
    super.email,
    super.plan,
    super.location,
    super.analyticsProperties,
    required this.userAttributes,
  });

  /// Analytics attributes for the Pinpoint User.
  final AnalyticsProperties userAttributes;
}
