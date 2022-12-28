// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

abstract class AnalyticsPluginInterface extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.analytics;

  /// {@macro amplify_core.amplify_analytics_category.record_event}
  Future<void> recordEvent({required AnalyticsEvent event}) {
    throw UnimplementedError('recordEvent() has not been implemented');
  }

  /// {@macro amplify_core.amplify_analytics_category.flush_events}
  Future<void> flushEvents() {
    throw UnimplementedError('flushEvents() has not been implemented');
  }

  /// {@macro amplify_core.amplify_analytics_category.register_global_properties}
  Future<void> registerGlobalProperties({
    required AnalyticsProperties globalProperties,
  }) {
    throw UnimplementedError(
      'registerGlobalProperties() has not been implemented',
    );
  }

  /// {@macro amplify_core.amplify_analytics_category.unregister_global_properties}
  Future<void> unregisterGlobalProperties({
    required List<String> propertyNames,
  }) {
    throw UnimplementedError(
      'unregisterGlobalProperties() has not been implemented',
    );
  }

  /// {@macro amplify_core.amplify_analytics_category.enable}
  Future<void> enable() {
    throw UnimplementedError('enable() has not been implemented');
  }

  /// {@macro amplify_core.amplify_analytics_category.disable}
  Future<void> disable() {
    throw UnimplementedError('disable() has not been implemented');
  }

  /// {@macro amplify_core.amplify_analytics_category.identify_user}
  Future<void> identifyUser({
    required String userId,
    required AnalyticsUserProfile userProfile,
  }) {
    throw UnimplementedError('identifyUser() has not been implemented');
  }
}
