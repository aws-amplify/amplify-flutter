// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_event_enrichment.lifecycle_observer}
/// Abstract interface for observing app lifecycle transitions.
///
/// Implement this to bridge platform-specific lifecycle events
/// (e.g. Flutter's `WidgetsBindingObserver`) to the session manager.
/// {@endtemplate}
abstract interface class LifecycleObserver {
  /// Called when the app moves to the background.
  void onPause();

  /// Called when the app returns to the foreground.
  void onResume();

  /// Stops observing lifecycle events and releases resources.
  void dispose();
}
