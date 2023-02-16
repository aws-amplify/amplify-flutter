// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

// TODO(Samaritan1011001): Complete the implementation using Analytics Client
class PinpointProvider extends ServiceProviderClient {
  @override
  Future<void> init({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    // TODO(Samaritan1011001): implement init
  }

  @override
  Future<void> recordNotificationEvent({required AnalyticsEvent event}) async {
    // TODO(Samaritan1011001): implement recordNotificationEvent
  }

  @override
  Future<void> registerDevice(String deviceToken) async {
    // TODO(Samaritan1011001): implement registerDevice
  }
}
