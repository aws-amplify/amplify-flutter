// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of amplify_interface;

class AnalyticsCategory extends AmplifyCategory<AnalyticsPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.analytics;

  @override
  @nonVirtual
  Set<Category> get categoryDependencies => const {Category.auth};

  /// {@template amplify_core.amplify_analytics_category.record_event}
  /// Save an [event] to be sent in the next batch to the analytics service
  /// {@endtemplate}
  Future<void> recordEvent({required AnalyticsEvent event}) => identifyCall(
        AnalyticsCategoryMethod.recordEvent,
        () => defaultPlugin.recordEvent(event: event),
      );

  /// {@template amplify_core.amplify_analytics_category.flush_events}
  /// Immediately send all saved events to the analytics service
  /// {@endtemplate}
  Future<void> flushEvents() => identifyCall(
        AnalyticsCategoryMethod.flushEvents,
        () => defaultPlugin.flushEvents(),
      );

  /// {@template amplify_core.amplify_analytics_category.register_global_properties}
  /// Register fields of [globalProperties] to be sent with all future events.
  /// {@endtemplate}
  Future<void> registerGlobalProperties({
    required CustomProperties globalProperties,
  }) =>
      identifyCall(
        AnalyticsCategoryMethod.registerGlobalProperties,
        () => defaultPlugin.registerGlobalProperties(
          globalProperties: globalProperties,
        ),
      );

  /// {@template amplify_core.amplify_analytics_category.unregister_global_properties}
  /// Remove fields by their [propertyNames] to stop being sent with all future events
  /// {@endtemplate}
  Future<void> unregisterGlobalProperties({
    List<String> propertyNames = const <String>[],
  }) =>
      identifyCall(
        AnalyticsCategoryMethod.unregisterGlobalProperties,
        () => defaultPlugin.unregisterGlobalProperties(
          propertyNames: propertyNames,
        ),
      );

  /// {@template amplify_core.amplify_analytics_category.enable}
  /// Start all automatic event tracking of this plugin
  /// {@endtemplate}
  Future<void> enable() => identifyCall(
        AnalyticsCategoryMethod.enable,
        () => defaultPlugin.enable(),
      );

  /// {@template amplify_core.amplify_analytics_category.disable}
  /// Stop all automatic event tracking of this plugin
  /// {@endtemplate}
  Future<void> disable() => identifyCall(
        AnalyticsCategoryMethod.disable,
        () => defaultPlugin.disable(),
      );

  /// {@template amplify_core.amplify_analytics_category.identify_user}
  /// Store a [userId] with [userProfile] to be associated with current device
  /// {@endtemplate}
  Future<void> identifyUser({
    required String userId,
    required UserProfile userProfile,
  }) =>
      identifyCall(
        AnalyticsCategoryMethod.identifyUser,
        () => defaultPlugin.identifyUser(
          userId: userId,
          userProfile: userProfile,
        ),
      );
}
