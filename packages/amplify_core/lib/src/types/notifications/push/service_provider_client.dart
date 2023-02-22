// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.push.service_provider_client}
/// Abstract class that a new service provider class must subclass and implement concrete functionality
/// {@endtemplate}
abstract class ServiceProviderClient {
  void init({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  });
  void registerDevice(String deviceToken);
  void recordNotificationEvent({
    required AnalyticsEvent event,
  });
}
