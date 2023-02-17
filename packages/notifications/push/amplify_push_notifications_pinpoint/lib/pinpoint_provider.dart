// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

// TODO(Samaritan1011001): Complete the implementation using Analytics Client
class PinpointProvider extends ServiceProviderClient {
  @override
  void init({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) {
    // TODO(Samaritan1011001): implement init
  }

  @override
  void recordNotificationEvent({required AnalyticsEvent event}) {
    // TODO(Samaritan1011001): implement recordNotificationEvent
  }

  @override
  void registerDevice(String deviceToken) {
    // TODO(Samaritan1011001): implement registerDevice
  }
}
