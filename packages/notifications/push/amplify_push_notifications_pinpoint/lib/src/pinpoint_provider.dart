// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
// TODO(Samaritan1011001): Complete the implementation using Analytics Client

/// {@template amplify_push_notifications_pinpoint.pinpoint_provider}
/// The AWS Pinpoint implementation of the Amplify Push Notification category.
/// {@endtemplate}
class PinpointProvider extends ServiceProviderClient {
  /// {@macro amplify_push_notifications_pinpoint.pinpoint_provider}
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
