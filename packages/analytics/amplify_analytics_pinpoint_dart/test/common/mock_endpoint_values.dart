// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/channel_type.dart';
import 'package:amplify_core/amplify_core.dart';

import 'mock_values.dart';

const userId = 'userId';

final userLocation = AnalyticsUserProfileLocation(
  latitude: 12.3,
  longitude: 32.1,
  postalCode: 'postalCode',
  city: 'city',
  region: 'region',
  country: 'country',
);

final userProfile = AnalyticsUserProfile(
  name: 'name',
  email: 'email',
  plan: 'plan',
  location: userLocation,
  analyticsProperties: analyticsProperties,
);

const channelType = ChannelType.apns;
const address = 'address';
const optOut = 'OPT-OUT';
