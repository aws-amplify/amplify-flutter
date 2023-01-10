// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_analytics_pinpoint_dart.cached_events_path_provider}
/// Provides storage location for the Drift Database used for caching Analytics Events
/// {@endtemplate}
abstract class CachedEventsPathProvider {
  /// {@macro amplify_analytics_pinpoint_dart.cached_events_path_provider}
  Future<String> getApplicationSupportPath();
}
