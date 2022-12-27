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

  /// Analytics attributes for the Pinpoint User
  final AnalyticsProperties userAttributes;
}
