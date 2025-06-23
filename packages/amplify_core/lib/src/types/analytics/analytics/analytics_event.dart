// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/analytics/analytics/custom_properties.dart';

class AnalyticsEvent {
  AnalyticsEvent(this.name);

  final String name;
  final CustomProperties customProperties = CustomProperties();
}
