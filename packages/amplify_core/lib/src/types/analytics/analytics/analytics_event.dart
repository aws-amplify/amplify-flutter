// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/analytics/analytics/analytics_properties.dart';

class AnalyticsEvent {
  final String name;

  final AnalyticsProperties properties = AnalyticsProperties();

  AnalyticsEvent(this.name);
}
