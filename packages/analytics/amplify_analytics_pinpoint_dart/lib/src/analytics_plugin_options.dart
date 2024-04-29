// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_analytics_pinpoint_dart.analytics_pinpoint_plugin_options}
/// The plugin options for the Amplify Analytics Pinpoint plugin
/// {@endtemplate}
class AnalyticsPinpointPluginOptions {
  /// {@macro amplify_analytics_pinpoint_dart.analytics_pinpoint_plugin_options}
  const AnalyticsPinpointPluginOptions({
    this.autoFlushEventsInterval = const Duration(seconds: 30),
  });

  /// The duration in seconds between flushing analytics events to Pinpoint.
  final Duration autoFlushEventsInterval;
}
